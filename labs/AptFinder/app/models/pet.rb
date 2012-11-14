# == Schema Information
#
# Table name: pets
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  age        :integer
#  species    :string(255)
#  tenant_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pet < ActiveRecord::Base

	belongs_to :tenant
	
end
