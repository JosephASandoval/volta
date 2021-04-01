# @products.each do |product|
#   json.set! product.id do
#     json.partial! "product", product: product
#   end
# end

@products.each do |product|
  json.set! product.id do
    json.partial! '/api/products/product', product: product
  end
end