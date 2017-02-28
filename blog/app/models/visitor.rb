class Visitor < ApplicationRecord
  has_one :comment
  notation_column :name
  validates :name, presence: true, null: false, default: nil, limit: 200
end
