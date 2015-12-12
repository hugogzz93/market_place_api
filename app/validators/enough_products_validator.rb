class EnoughProductsValidator < ActiveModel::Validator
	def validate(record)
		record.placements.each do |placement|
			# placement.quantity <= placement.product.quantity
			product = placement.product
			if placement.quantity > product.quantity
				record.errors["#{product.title}"] << "Is out of stock, just #{product.quantity} left"
			end
		end
		
	end
end