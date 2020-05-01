class Article < ApplicationRecord
    belongs_to :user
    
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :ratings, dependent: :destroy
    has_one_attached :image
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :text, presence: true, length: { minimum: 10 }
end
