# == Schema Information
#
# Table name: roles
#
#  id   :integer          not null, primary key
#  name :string
#

class Role < ApplicationRecord
  validates :name, inclusion: %w(user admin staff manager)
  validates :name, uniqueness: true

end
