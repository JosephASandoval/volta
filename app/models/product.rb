# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  price          :float            not null
#  exterior       :string           not null
#  interior_color :string           not null
#  interior_name  :string           not null
#  wheel_type     :string           not null
#  self_driving   :boolean          not null
#  view           :string           not null
#  image_link     :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :exterior, presence: true
  validates :interior_color, presence: true
  validates :interior_name, presence: true
  validates :wheel_type, presence: true
  validates :self_driving, inclusion: { in: [true, false] }
  validates :view, presence: true
  validates :image_link, presence: true

  # has_many_attached :photos
end
