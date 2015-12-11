class UserSerializer < ActiveModel::Serializer
	attributes :id, :email, :created_at, :updated_at, :auth_token
  	has_many :products

  	def products
  		if object.products
  			object.products.collect { |product| product.id }
  		else
  			
  		end
  	end
end
