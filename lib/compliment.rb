class Compliment
  attr_accessor :message, :image

  def initialize
    @message = []
    @image = Dir["./public/images/*"].sample[9..-1]
    compliment_message
    # compliment_image
  end

  def compliment_message
    File.readlines('./public/compliments.txt').each do |line|
      @message << line
    end
  end
  # def compliment_image
  #   Dir.foreach('./public/images/') do |filename|
  #     @image << filename
  #   end
  # end
end

# # http://peoplearenice.blogspot.com/p/compliment-list.html