json.extract! review, :id, :rating, :content, :product_id, :author_id, :created_at
json.avgRating review.product.avg_rating
json.updated_at review.updated_at.strftime("%F")
