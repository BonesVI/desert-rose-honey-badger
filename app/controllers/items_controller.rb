require 'item.rb'
class ItemsController < ApplicationController
	attr_accessor :item

	def index
	end
	def show
		@item = Item.find(params[:id])
	end
	def new

	end
	def create
		@item = Item.new(params[:item])
		if @item.save
			id = @item.id.to_i
			redirect_to item_path(id)
		end
		
	end
	def update
		@item = Item.find(params[:id])
	end
	def destroy

	end
end
