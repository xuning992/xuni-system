class Article < ActiveRecord::Base
    belongs_to :category
    has_many :comments, dependent: :destroy
    has_many :tags, dependent: :destroy
end
