class RidersController < ApplicationController
	def index
		@riders = Rider.all
	end

	def new
	end

	def create
		@rider = Rider.create(rider_params)
		if @rider.valid?
			redirect_to rider_path(@rider)
		else
			flash[:error] = @rider.errors.full_messages
			render :new
		end
	end

	def show
		set_rider
	end

	def edit
		set_rider
	end

	def update
		set_rider
		@rider.update(rider_params)
		redirect_to rider_path(@rider)
	end

	def set_rider
		@rider = Rider.find(params[:id])
	end

	def rider_params
		params.require(:rider).permit(:name, rollercoaster_ids:[])
	end
end