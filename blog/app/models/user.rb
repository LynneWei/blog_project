class User < ApplicationRecord
  has_many :articles

  # validates :icon, presence: true, null: false, default: '', limit: 200
end

