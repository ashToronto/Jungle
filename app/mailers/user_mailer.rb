class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_confirmation(order, current_user)
    @order = order
    @user = current_user
    mail(to: current_user.email, subject: "Here is your order: #{@order.id}")
  end
end
