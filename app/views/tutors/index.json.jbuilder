json.array!(@tutors) do |tutor|
  json.extract! tutor, :id, :name, :gpa, :subject, :postal_code, :email, :phone_number, :images, :description, :social_links, :price
  json.url tutor_url(tutor, format: :json)
end
