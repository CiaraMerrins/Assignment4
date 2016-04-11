#require 'observer'
class PinsController < ApplicationController
#include Observable
before_action :find_pin, only: [:show, :edit, :update, :destroy, :upvote]
before_action :authenticate_user!, except: [:index, :show]
#attr_reader :price, :budget
#observer pattern
#def initialize(price = 12, budget = 20)
#@price, @budget = price, budget
#add_observer(Notifier.new)

#end
#def log(price)
#@price += price
#changed
#notify_observers(self, budget)
#end
#end

#facade pattern
#def initialize(number_products)
 #   @products= []
  #  number_products.times do |i|
   #   product = new_product("Product#{i}")
    #  @products << product
    #end
  #end

def index
@pins= Pin.all.order("created_at DESC")

end
def show
end
def new
@pin = current_user.pins.build
end
def create
@pin = current_user.pins.build(pin_params)
if @pin.save
redirect_to @pin, notice: "Successfully created new pin"
else
render 'new'
end
end
def edit
end
def update
if @pin.update(pin_params)
redirect_to @pin, notice: "Pin was successfully updated!"
else
render 'edit'
end
end
def destroy
@pin.destroy
redirect_to root_path
end
def upvote
@pin.upvote_by current_user
redirect_to :back
end
private
def pin_params
params.require(:pin).permit(:title, :description, :image_filename)
end
def find_pin
@pin = Pin.find(params[:id])
end
end
