def step(&block)
  @steps << block
end

def event(des, &block)
  @events << {des: des, condition: block}
end

# lambda{
#   steps = []
#   events = []
#
#   def step(&block)
#     steps << block
#   end
#
#   def event(des, &block)
#     events << {des: des, condition: block}
#   end
#
# }


@steps ||= []
@events ||= []

load 'events.rb'

@events.each do |event|
  @steps.each do |step|
    step.call
  end
  puts "ALERT: #{event[:des]}" if event[:condition].call
end
