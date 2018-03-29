class Triangle
attr_accessor :a, :b, :c, :sides


  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [@a, @b, @c]
  end

  def kind
    if !@sides.detect {|side| side == 0}
      if @a + @b > @c && @b + @c > @a && @a + @c > @b
        if @a == @b && @a == @c
        :equilateral
        elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
        end
      else
        raise TriangleError
      end
    elsif @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
