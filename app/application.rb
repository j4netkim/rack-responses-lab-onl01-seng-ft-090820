require 'time'

class Application
  def call(env)
    resp = Rack::Response.new

    t1 = Kernel.rand(1..24)

    resp.write "#{t1}\n"

    

end
