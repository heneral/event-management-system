class TicketMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.ticket_mailer.ticket_confirmation.subject
  #
  def ticket_confirmation(ticket)
    @ticket = ticket
    @user = ticket.user
    @event = ticket.event

    mail to: @user.email, subject: "Ticket Confirmation for #{@event.title}"
  end
end
