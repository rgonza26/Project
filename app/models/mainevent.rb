class Mainevent < ActiveRecord::Base
  validates :Mainevent, presence: true
  validates :Mainevent, uniqueness: true
end
