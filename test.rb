class Image
  attr_reader :array, :row1, :row2, :row3

  def initialize(array, row1, row2, row3)
    @array = array
    @row1 = row1
    @row2 = row2
    @row3 = row3
  end

  def output_image
    array.flatten!
    puts "#{@array}"
    row1.flatten!
    puts "#{@row1}"
    row2.flatten!
    puts "#{@row2}"
    row3.flatten!
    puts "#{@row3}"
  end

end

  image = Image.new(
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
)


image.output_image