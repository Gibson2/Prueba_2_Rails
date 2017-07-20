class User < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, presence: true
  validates :email, uniqueness: true

  before_save :validate_first_letter_name

  def validate_first_letter_name

  	self.name = self.name.capitalize

  end

end
