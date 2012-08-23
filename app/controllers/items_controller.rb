
class ItemsController < ApplicationController
	attr_accessor :item

	def index
		@item = Item.all
	end
	def show

	end
	def new
		@item = Item.new
	end
	def create

		redirect_to :action => "index"
	end
	def update

	end
	def destroy

	end
end
