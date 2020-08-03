class Product < ApplicationRecord

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			where(nil)
		end
	end


end
