class Project < ActiveRecord::Base
  validates :title,
            :status,
            :presence => true
  has_many :TaskGroups, :dependent => :destroy
end

# == Schema Information
#
# Table name: projects
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  deadline    :datetime
#  status      :string(255)
#  budget      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

