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

class Computation < ActiveRecord::Base
  attr_accessible :name, :result


end
