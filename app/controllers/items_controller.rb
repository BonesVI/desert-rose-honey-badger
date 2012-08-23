require 'item.rb'
class ItemsController < ApplicationController
	attr_accessor :item

	def index
	end
	def show

	end
	def new
	end
	def create
		@item = Item.new(params[:item])
		@item.save
		redirect_to :action => "index"
	end
	def update

	end
	def destroy

	end
end
