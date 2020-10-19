require 'time'

class Application
  def call(env)
    resp = Rack::Response.new

    t1 = Kernel.rand(1..24)

    resp.write "#{t1}\n"

    if t1 > 12 || t1 == 12
      resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
    end
    resp.finish
  end

end
