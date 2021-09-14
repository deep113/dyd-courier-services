class OrderController < ApplicationController
  def index
    @order = Order.new
  end

  def new
    @order = Order.new
  end

  def create
    #Rails.logger.info("PARAMS: #{order_params.inspect}")
    @order = Order.create(order_params)

    if @order.save 
         TrackMailer.with(order: @order).track_send_email.deliver_later
         redirect_to "/tracks" , :notice => "Check Email and Track Status."
     else
      render "index"
     end
   
  end

  private

  def order_params
    params.require(:order).permit!
  end

end
