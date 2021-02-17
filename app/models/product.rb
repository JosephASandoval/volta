# == Schema Information
#
# Table name: products
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  price          :integer          not null
#  exterior_color :string           not null
#  interior_color :string           not null
#  wheel_type     :string           not null
#  trim           :string           not null
#  self_driving   :boolean          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :exterior_color, presence: true
  validates :interior_color, presence: true
  validates :wheel_type, presence: true
  validates :trim, presence: true
  validates :self_driving, inclusion: { in: [true, false] }
end
