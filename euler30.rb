class EulerThirty

  attr_reader :range, :answers

  def initialize
    @range = (2..1000000)
    @answers = []
    check_each
  end

  def check_num(num)
    arr = num.to_s.chars.map(&:to_i)
    sum = arr.map { |n| n**5 }.inject(:+)
    if num == sum
      answers << num
    end
  end

  def check_each
    range.each {|n|
      check_num(n)
    }
  end

end

project = EulerThirty.new
puts project.answers