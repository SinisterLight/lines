class Line
  attr_accessor :start_point, :end_point

  def initialize start_point, end_point
    @start_point = start_point
    @end_point = end_point
  end

  def length
    Math.sqrt(
      (@start_point[0] - @end_point[0])**2 +
      (@start_point[1] - @end_point[1])**2
    )
  end
end
