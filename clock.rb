require 'clockwork'
include Clockwork
handler do |job|
  `curl http://slow.herokuapp.com/`
end
every(1.minute, 'ping')
