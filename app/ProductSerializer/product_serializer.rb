# class ProductSerializer
#   def self.serialize(product)
 
#     # start with the open brace to create a valid JSON object
#     serialized_post = '{'
 
#     serialized_post += '"id": ' + product.id.to_s + ', '
#     serialized_post += '"name": "' + product.name + '", '
#     serialized_post += '"price": "' + product.price + '", '
#     serialized_post += '"inventory": "' + product.inventory + '", '
#     serialized_post += '"description": "' + product.description + '", '
 
#     # and end with the close brace
#     serialized_post += '}'
#   end
# end


class ProductSerializer
  def self.serialize(product)
      #open/begin json object
      serialized_product = '{'
      #product attributes
      serialized_product += '"id": ' + product.id.to_s + ','
      serialized_product += '"name": "' + product.name + '",'
      serialized_product += '"price": ' + product.price.to_s + ','
    if product.inventory
      serialized_product += '"inventory": ' + product.inventory.to_s + ','
    end
    
    if product.description
      serialized_product += '"description": "' + product.description + '"'
    end
      #close json object
      serialized_product += '}'
  end
end