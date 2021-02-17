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
require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
