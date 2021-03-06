@reviews.each do |review|
  json.set! review.id do
    json.partial! "/api/reviews/review", review: review
    json.author review.author.first_name
  end
end
