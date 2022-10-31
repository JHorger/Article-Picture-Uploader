class Article < ApplicationRecord
    include Visible
    
    has_one_attached :image
    has_many :comments, dependent: :destroy

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    # def image_as_thumbnail
    #     return unless image.content_type.in?(%w[image/jpeg image/png])
    #     image.variant(resize_to_limit: [300, 300]).processed
    # end
end
