# class Myclass < Array
#   def my_mthod
#     'Hello'
#   end
# end

Myclass = Class.new(Arrayl) do
  def my_method
    'Hello'
  end
end

m = Myclass.new
puts Myclass.superclass
puts m.my_method
