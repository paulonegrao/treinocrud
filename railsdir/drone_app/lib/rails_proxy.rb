class RailsProxy < Rack::Proxy
  def rewrite_env(env)
    env['HTTP_HOST'] = 'www.google.ca/search?q='
    env['SERVER_PORT'] = 80

    # Remove forwarding parameters
    env['SCRIPT_NAME'] = nil
    env['HTTP_X_FORWARDED_PORT'] = 443
    env['HTTP_X_FORWARDED_PROTO'] = "https"

    # Do some other stuff as needed
    # ...

    # Return the 'env'
    env
  end
end
