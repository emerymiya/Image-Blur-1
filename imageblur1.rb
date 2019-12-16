class Image
  attr_reader :array

  def initialize(array)
    @array = array
  end

  
  def output_image
    array.each do |row|
      row.each do |cell|
        print cell
      end
      puts "\n"
    end
  end
end

  image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])


image.output_image


