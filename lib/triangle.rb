class Triangle
  
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a <= 0 && @b <= 0 && @c <= 0 #checks if sides > 0
      raise TriangleError
    elsif @a + @b <= @c || @a + @c <= @b || @b + @c <= @a #checks triangle inequality theorem
      raise TriangleError
    else
      if @a == @b && @a == @c && @b == @c #checks if equilateral
        :equilateral
      elsif @a == @b && @a != @c || @a == @c && @a != @b || @b == @c && @c != @a #checks if isoceles
        :isosceles
      elsif @a != @b && @a != @c && @b != @c #checks if scalene
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end

end