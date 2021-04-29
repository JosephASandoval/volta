json.review do
  json.partial! '/api/reviews/review', review: @review
end

json.author do
  json.partial! '/api/users/user', user: @review.author
end

json.avgRating @review.product.avg_rating