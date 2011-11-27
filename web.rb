require 'sinatra'

get '/' do
  percent = Math.sin(Time.now.min.to_f / 60 * 2 * 3.14159) ** 2
  time = 10 * percent

  sleep time
  "slept for #{time}"
end
