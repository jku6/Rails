# == Schema Information
#
# Table name: pirates
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  ship       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PirateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end