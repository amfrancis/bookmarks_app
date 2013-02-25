class Bookmark < ActiveRecord::Base
  attr_accessible :date_saved, :name, :url
  validates :name, :presence => true
  validates :url, :presence => true
end
