require 'rails_helper'

RSpec.describe Product, type: :model do
    
   it "should validate a product" do
      product = Product.create(name: "micromax" ,price: "10000" ,category: "mobile")
      expect(product).to be_valid
   end
    it "should show error for invalid product having no name" do 
       product = Product.create(name: nil ,price: "10000" ,category: "mobile")
       expect(product).to have(1).errors_on(:name)
    end
    it "should show error for invalid product having no price" do 
       product = Product.create(name: "micromax" ,price: nil ,category: "mobile")
       expect(product).to have(1).errors_on(:price)
    end
    it "should should return the product for a name" do
      product1 = Product.create(name: "micromax" ,price: "10000" ,category: "mobile")
      product2 = Product.create(name: "micro" ,price: "10000" ,category: "mobi")
      product3 = Product.create(name: "mic" ,price: "10000" ,category: "bile")
    expected_result = ["bile"]
    real_result[] = Product.find_product_by("mic")
    expect(real_result).to eq expected_result
    end		

end
