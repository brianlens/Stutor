json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :date, :time, :place
  json.url reservation_url(reservation, format: :json)
end
