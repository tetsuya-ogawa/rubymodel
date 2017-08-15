# この問題はmoduleのメソッドが呼び出される際のselfを意識する

require 'date'
module Mail

  def write(body)
    @body = body
  end

  def send
    @send_time = DateTime.now
    puts create_sended_time_info + "Sending a #{self.class} to " + @recipient + '.'
  end

  def to_s
    ["#{self.class} of #{create_sended_time_info}\n", "Dear #{@recipient},\n", "#{@body}\n", "Sincerely \n#{@sender}"].join("\n")
  end

  private

  def create_sended_time_info
    @send_time.strftime('%a %b %d %X %Z %Y: ')
  end
end

class Postcard
  include Mail

  def initialize(sender, recipient)
    @sender, @recipient = sender, recipient
  end
end

card = Postcard.new('Me', 'Friend')
card.write("Did you forget my birthsday?")
card.send
puts "-" * 60
sleep(2)
puts card

# Tue Mar 22 11:59:16 +0900 2011: Sending a Postcard to Friend.
# ------------------------------------------------------------
# Postcard of Tue Mar 22 11:59:16 +0900 2011:
#
# Dear Friend,
#
# Did you forget my birthsday?
#
# Sincerely,
# Me
