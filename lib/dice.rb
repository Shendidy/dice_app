class Dice

  def initialize(count = 1)
    @count = count
    @result = []
  end

  def roll
    return rand(6) + 1 if @count == 1

    (1..@count).each do |number|
      @result.push(rand(6) +1)
    end
    @result
  end

  def sumup
    @result.inject(0){|sum,x| sum + x }
  end

end
