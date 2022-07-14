module MyEnumerable
  def all?(@list)
    answer = false
    @list.each do |item| answer = true if yield(item)
      return false unless yield(item)
    end
    answer
  end

  def any?(@list)
    @list.each do |item| return true if yield(item)
    end 
    false
  end

  def filter(@list)
    @list.select do |item| return true if yield(item)
    end
    false
  end
end
