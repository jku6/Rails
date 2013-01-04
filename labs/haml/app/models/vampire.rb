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

class Vampire < ActiveRecord::Base
  attr_accessible :blood_type, :name, :team
end
