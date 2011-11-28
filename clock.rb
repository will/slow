require 'clockwork'
include Clockwork
handler do |job|
  `curl http://slow.herokuapp.com/`
end

every(42.seconds, 'ping')
every( 2.minutes, 'ping')
every( 7.minutes, 'ping')
every(13.minutes, 'ping')
