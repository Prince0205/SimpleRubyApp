require 'sinatra/base'

class SimpleRubyApp < Sinatra::Base
  enable :dump_errors
  start = Time.now.to_f

  get '/' do
    cur_time = Time.now.to_f
    elapsed = ((cur_time - start) * 1000.0).to_i
    seconds = (elapsed / 1000) % 60
    minutes = ((elapsed / (1000*60)) % 60)
    hours   = ((elapsed / (1000*60*60)) % 24)

    "<h1>Hello World!</h1><i>Uptime: %02d:%02d:%02d" % [hours, minutes, seconds]
  end
end
