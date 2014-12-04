class MainSite < ActiveRecord::Base
  validates :MainSite, presence: true
  validates :MainSite, uniqueness: true
end
