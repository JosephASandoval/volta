cart_items.each do |item|
  json.set! item.id do
    json.extract! item, :id, :product_id, :user_id, :quantity, :total_price
    json.extract! item.product, :name
    json.photoUrl url_for(item.product.photo)
  end
end