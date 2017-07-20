class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true

	scope :all_size_var, ->(var) { where("size=?", var) }
	scope :item_with_no_user, -> { where(Item.user.nil?) }

end
