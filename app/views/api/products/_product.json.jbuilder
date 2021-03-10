json.extract! product, :id, :name, :price, :exterior, :interior, :wheel_type, :self_driving, :view
json.photoUrl url_for(product.photo)