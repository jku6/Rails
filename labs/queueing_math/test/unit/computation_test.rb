# == Schema Information
#
# Table name: computations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  result     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ComputationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
