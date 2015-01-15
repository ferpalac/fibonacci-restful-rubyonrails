class FibController < ApplicationController
  
	def index
		redirect_to :action => 'show', :id => 5
    end
	
	def show
		@fibonacci=FibonacciModel.new()
		@fibonacci.calculate_fib(params[:id])

		respond_to do |format|
			format.json { render json: @fibonacci }
		end
  end

end
