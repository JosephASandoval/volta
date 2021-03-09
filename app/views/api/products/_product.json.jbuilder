json.extract! product, :id, :name, :price, :exterior, :interior_color, :interior_name, :wheel_type, :self_driving, :view
json.photoUrl url_for(product.photo)