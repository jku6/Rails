# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  imagedata  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Photo < ActiveRecord::Base
  attr_accessible :imagedata
end
