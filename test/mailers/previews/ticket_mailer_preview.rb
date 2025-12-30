# Preview all emails at http://localhost:3000/rails/mailers/ticket_mailer
class TicketMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/ticket_mailer/ticket_confirmation
  def ticket_confirmation
    TicketMailer.ticket_confirmation
  end

end
