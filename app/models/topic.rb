class Topic < ActiveRecord::Base
  validates :content,  presence: true
  validates :title, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  def self.set_read
    @topics = Topic.all
    @topics.each do |topic|
      if topic.content.length > 99
        topic.update(read: true)
      end
    end
  end
end
