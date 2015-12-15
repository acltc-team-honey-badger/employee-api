json.id employee.id
json.first_name employee.first_name
json.last_name employee.last_name
json.birthdate employee.birthdate
json.email employee.email
json.ssn employee.ssn
json.addresses employee.addresses.each do |address|
  json.id address.id
  json.address_1 address.line_1
  if address.zip.length > 5
    json.zip_code address.zip
    else
    json.zip_code "Not specific enough"
  end
end