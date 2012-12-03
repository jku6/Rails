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

class God < ActiveRecord::Base
  attr_accessible :description, :name

# class method so use self
    def self.text_search(query)
        self.where("name @@ :q or description @@ :q", :q => query)
    end

end
