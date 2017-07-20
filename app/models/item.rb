class Item < ApplicationRecord
	belongs_to :category
	belongs_to :user, optional: true

	scope :all_size_var, ->(var) { where("size=?", var) }
	scope :item_with_no_user, -> { where(Item.user.nil?) }

	after_destroy :destroy_category

	def last?
		category.items.count == 1? true : false
	end

	def destroy_category
		if Items.last.last?
			category.destroy
		end
	end
end
