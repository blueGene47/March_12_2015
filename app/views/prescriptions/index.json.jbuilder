json.array!(@prescriptions) do |prescription|
  json.extract! prescription, :id, :pet_name, :type_of_pet, :breed, :age, :weight, :date_of_last_visit
  json.url prescription_url(prescription, format: :json)
end
