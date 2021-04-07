# == Schema Information
#
# Table name: reviews
#
#  id         :bigint           not null, primary key
#  content    :text             default("")
#  rating     :integer          not null
#  product_id :integer          not null
#  author_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :product_id, presence: true
  validates :author_id, presence: true
  validates :rating, inclusion: { in: (1..5) }

  belongs_to :product,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: :Product

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User
end
