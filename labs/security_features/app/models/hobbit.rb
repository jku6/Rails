# == Schema Information
#
# Table name: hobbits
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  role       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hobbit < ActiveRecord::Base
  
end
