class Compliment
  attr_accessor :message, :image

  def initialize
    @message = []
    @image = Dir["./public/images/*"].sample[9..-1]
    compliment_message
  end

  def compliment_message
    File.readlines('./public/compliments.txt').each do |line|
      @message << line
    end
  end

end

# # http://peoplearenice.blogspot.com/p/compliment-list.html