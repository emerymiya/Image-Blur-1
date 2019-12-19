class Image

  def initialize (array)
    @array = array
  end

  def get_ones
    ones = []
    @array.each_with_index do |row, r|
      row.each_with_index do |value, c|
        if value == 1
          ones << [r, c]
        end
      end
    end
    ones
  end

  def distance!
    ones = get_ones
      @array.each_with_index do |row, r|
        row.each_with_index do |value, c|
          ones.each do |one_r, one_c|

            if r == one_r && c == one_c
              @array[r -1][c] = 1 unless r == 0
              @array[r +1][c] = 1 unless r >= 3 
              @array[r][c -1] = 1 unless c == 0 
              @array[r][c +1] = 1 unless c >= 3 
              @array[r -2][c] = 1 unless r <= 1
              @array[r +2][c] = 1 unless r >= 2
              @array[r][c -2] = 1 unless c <= 1
              @array[r][c +2] = 1 unless c >= 2
            end
          end
        end
      end
  end

  def output_image
    @array.each do |data|
      puts data.join
    end
  end
end

image = Image.new([
[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 1],
[0, 0, 0, 0]
])


image.distance!
image.output_image


