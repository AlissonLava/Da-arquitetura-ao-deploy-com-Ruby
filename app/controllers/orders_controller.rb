class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    @order.status = :pending
    @order.save

    if @order.save
      flash[:notice] = 'Pedido criado'
      redirect_to root_pathe

  end

  private

  def order_params
    params.permit(:product_id)
  end

end
