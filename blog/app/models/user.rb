class User < ApplicationRecord
  has_many :articles
  has_one :icon
  # validates :icon, presence: true, null: false, default: '', limit: 200
end

