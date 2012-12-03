# == Schema Information
#
# Table name: gods
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class GodTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
