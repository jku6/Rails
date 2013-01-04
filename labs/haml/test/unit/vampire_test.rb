# == Schema Information
#
# Table name: vampires
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  blood_type :string(255)
#  team       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VampireTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
