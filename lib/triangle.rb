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
        if @sides.select {|side| side == side[0]}.count > 2
        :equilateral
      elsif @sides.select {|side| side == sides[0]}.count > 1 || sides.select {|side| side == sides[1]}.count > 1
        :isosceles
      else
        :scalene
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

end
