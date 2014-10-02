class BigCorpTokenAuthentication

  def initialize(app)
    @app = app
  end

  def call(env)
    @env = env
    if token_is_valid?
      @app.call(env)
    else
      Rack::Response.new("Unauthorized", 401)
    end
  end

  private

  def token_is_valid?
    # This would normally call out to BigCorp's user authentication system using .bearer
    # Returns true for the purposes of demo.
    #
    # e.g. check_with_api(bearer)
    true

    # and a user_id is returned
    @env[:user_id] = user_id_from_token(bearer)
  end

  def bearer
    bearer_from_header(@env["HTTP_AUTHORIZATION"])
  end

  def bearer_from_header(header)
    bearer = header.to_s.match(/Bearer (.*)/) {|m| m[1]}
    if bearer
      bearer
    else
      nil
    end
  end

  # For Demo Purposes Only - Token format: TOKEN0000 (e.g. TOKEN12; TOKEN4321; TOKEN00001)
  def user_id_from_token(bearer)
    user_id = bearer.sub('TOKEN', '').to_i
    if user_id == 0
      user_id = 1234
    end
    user_id
  end
end