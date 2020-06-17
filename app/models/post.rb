class Post < ApplicationRecord
  validates :title, length: { minimum: 2 }, presence: true
  validates :body, length: { minimum: 10 }, presence: true
  belongs_to :author
end
