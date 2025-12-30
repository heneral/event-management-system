json.extract! ticket, :id, :event_id, :user_id, :quantity, :purchased_at, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
