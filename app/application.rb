class Application

  def call(env)
    resp = Rack::Response.new

    current_time = Time.now.hour

    if current_time < 12
      resp.write "Good Morning!"
    elsif current_time >= 12
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
