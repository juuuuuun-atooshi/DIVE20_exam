module TopicsHelper
  def photo_img(topic)
    if topic.image?
      image_tag(topic.image, alt: topic.user.name)
    else
      return;
    end
  end
end
