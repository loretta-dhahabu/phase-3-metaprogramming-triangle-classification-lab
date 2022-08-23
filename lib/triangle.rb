class Triangle
  # write code here
  def initialize (size_a, size_b, size_c)
    @size_a=size_a
    @size_b=size_b
    @size_c=size_c
  end

  def kind
    inequality = []
    [@size_a, @size_b, @size_c].each do |size|
      inequality << (size >= [@size_a, @size_b, @size_c].sum - size)
    end
    if !inequality.include?(true) && @size_a>0 && @size_b>0 && @size_c>0
      if @size_a==@size_b && @size_b==@size_c
        return :equilateral
      elsif @size_a==@size_b || @size_b==@size_c || @size_a==@size_c
        return :isosceles
      else
        return :scalene
      end
    else
        raise TriangleError
    end
  end

  class TriangleError < StandardError

  end
end
