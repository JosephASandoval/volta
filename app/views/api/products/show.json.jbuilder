# json.partial! "api/products/product", product: @product

json.product do 
  json.partial! '/api/products/product', product: @product
  json.photoUrl @product.photo
end