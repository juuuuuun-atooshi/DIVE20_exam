module TopicsHelper
  def photo_img(topic)
    if topic.image?

      image = MiniMagick::Image.open(topic.image.file.file)

      wdth = image[:width]
      hght = image[:height]

      if wdth > 1000 && hght > 500
        image.resize "600x400"
        image.write topic.image.file.file
      end

      image_tag(topic.image, alt: topic.user.name)
    else
      return;
    end
  end
end
