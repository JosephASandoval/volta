# == Schema Information
#
# Table name: products
#
#  id           :bigint           not null, primary key
#  name         :string           not null
#  price        :float            not null
#  exterior     :string           not null
#  interior     :string           not null
#  wheel_type   :string           not null
#  self_driving :boolean          not null
#  view         :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :exterior, presence: true
  validates :interior, presence: true
  validates :wheel_type, presence: true
  validates :self_driving, inclusion: { in: [true, false] }
  validates :view, presence: true

  has_one_attached :photo

  has_many :carts,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: :CartItem

  has_many :buyers,
    through: :carts,
    source: :user

  has_many :reviews,
    primary_key: :id,
    foreign_key: :product_id,
    class_name: :Review

  def review_count
    reviews.size
  end

  def avg_rating
    return 0 unless reviews.size.positive?
    reviews.average(:rating).round(1).to_f
  end
end
