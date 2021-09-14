class TrackMailer < ApplicationMailer
    default from: 'notifications@example.com'

    def track_send_email
      @order = params[:order]
      mail(to: @order[:sender_email], subject: 'Your Order Track')
      mail(to: @order[:receiver_email], subject: 'Your Order Track')
    end
end
