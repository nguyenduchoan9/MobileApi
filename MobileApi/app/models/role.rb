# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Role < ApplicationRecord
  validates :name, inclusion: { in: %w(user admin staff manager) }
  validates :name, uniqueness: true
  validates :name, presence: true

end
