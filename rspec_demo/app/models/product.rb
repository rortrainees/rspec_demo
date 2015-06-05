class Product < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :price,:category
	
	def self.find_product_by(name)
         self.where(name: name).pluck(:category)
	end	
end
