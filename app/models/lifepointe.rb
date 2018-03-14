class Lifepointe < ApplicationRecord
	def self.search(search)
		if search
			where(["fname LIKE ?","%#{search}%"])
		else
			all
		end
		
	end
end
