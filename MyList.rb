require_relative 'MyEnumerable.rb'

class MyList
  include MyEnumerable
  def initialize(*array)
    @list = array
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
puts(list.filter{ |e| e.even? })