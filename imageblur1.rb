class Image
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def blur(distance = 1)
    distance.times do
      transform
    end
  end

  def output_image
    @array.each {|item| puts "#{item.join()}"}
  end

  private

  def transform
    width = array[0].length

    height = array.length

    ones_array = []

    array.each_with_index do |row, r|
      row.each_with_index do |value, c|
        ones_array << [r, c] if value == 1
      end
    end

    ones_array.each do |coordinate|
      r, c = coordinate

      array[c][r + 1] = 1 unless (r + 1 >= width)
      array[c][r - 1] = 1 unless (r - 1 < 0)
      array[c + 1][r] = 1 unless (c + 1 >= height)
      array[c - 1][r] = 1 unless (c - 1 < 0)
    end
  end
end


image = Image.new([
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
])

image.blur(3)
image.output_image


