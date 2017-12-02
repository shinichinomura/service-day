require 'fastimage'

class ImageSizePrefetchingService
  class ImageSize
    attr_reader :width, :height

    def initialize(width:, height:)
      @width = width
      @height = height
    end
  end

  def initialize(url:)
    @url = url
  end

  def process!
    image_size = fetch_size(@url)
    save!(url: @url, image_size: image_size)
  end

  private

  # @params [String] url
  # @params [ImageSize] image_size
  def save!(url:, image_size:)
    ::ImageSize.find_or_initialize_by(url: url) do |record|
      record.width = image_size.width
      record.height = image_size.height
    end.save!
  end

  # @return [ImageSize]
  def fetch_size(url)
    (width, height) = FastImage.size(url)

    ImageSize.new(width: width, height: height)
  end
end
