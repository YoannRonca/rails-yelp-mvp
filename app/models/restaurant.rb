class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :phone_number, presence: true, uniqueness: true
  validates :name, presence: true
  validates :address, presence: true
  LIST = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, presence: true, inclusion: { in: LIST}
end
