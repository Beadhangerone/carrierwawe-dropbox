class ImagesController < ApplicationController
	def index
		@images = Image.all
	end

	def new
		@image = Image.new
	end

	def create
		image = Image.new
		image.avatar = params[:image][:avatar]
		if image.save
			redirect_to images_path
		end
	end

	def edit
		$image = Image.find(params[:id])
	end	

	def update
		$image.avatar = params[:image][:avatar]
		if $image.save
			redirect_to images_path
		end
	end

	def destroy
		image = Image.find(params[:id])
		image.destroy
		redirect_to images_path
	end

end
