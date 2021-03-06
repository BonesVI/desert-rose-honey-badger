require 'item.rb'
class ItemsController < ApplicationController

	def index
		@items = Item.all

	end
	def show
		@item = Item.find(params[:id])
	end
	def new
		@item = Item.new
	end
	def create
		@item = Item.new(params[:item])
		if @item.save
			flash[:alert] = "Item has been saved"
			redirect_to @item
		else
			flash[:alert] = "Item has not been created"
			render :action => "new"
		end		
	end
	def edit
		@item = Item.find(params[:id])
	end
	def update 
		@item = Item.find(params[:id])
		if @item.update_attributes(params[:item])
			@items = Item.all
			render :action => "index"
		else
			render :action => "edit"
		end
	end
	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to items_path
	end
end
