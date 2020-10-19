require 'time'

class Application
  def call(env)
    resp = Rack::Response.new

    t1 = Kernel.rand(1..24)

    resp.write "#{t1}\n"

    if t1 < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
