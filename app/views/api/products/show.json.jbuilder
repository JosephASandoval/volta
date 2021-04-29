# json.partial! "api/products/product", product: @product

json.product do 
  json.partial! '/api/products/product', product: @product
  json.photoUrl @product.photo
  json.reviewIds @product.reviews.pluck(:id)
end

@product.reviews.includes(:author).each do |review|
  json.reviews do
    json.set! review.id do
      json.partial! 'api/reviews/review', review: review
    end
  end

  json.authors do
    json.set! review.author.id do
      json.extract! review.author, :id, :first_name
    end
  end
end