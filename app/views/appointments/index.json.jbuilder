json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :appoint_id, :pet, :date_of_visit, :customer, :reason, :requires_reminder
  json.url appointment_url(appointment, format: :json)
end
