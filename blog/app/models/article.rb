class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
	validates :title, presence: true, length: {minimum: 5, maximum: 10 }
	validates :text, presence: {message: '请输入～'}, length: {minimum: 10}
end
