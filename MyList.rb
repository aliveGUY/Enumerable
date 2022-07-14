require_relative "MyEnumerable.rb"

class MyList
  include MyEnumerable
  def initialize(*arguments)
    @list = arguments
  end
end
