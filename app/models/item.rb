class Item < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :price
	validates_presence_of :minbid
	validates_uniqueness_of :name
end
