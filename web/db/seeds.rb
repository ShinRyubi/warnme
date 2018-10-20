require 'open-uri'

puts "Seeding incidents.."
File.open("schema - incidents.csv", "r") do |f|
  f.each_with_index do |line, index|
    name, address, lat, long, content, content_local, kind, photo = line.chomp.split (",")
  Incident.create(name: name, address: address, latitude: lat, longitude: long, content: content, content_local: content_local, kind: kind, photo: photo)
  end
end


puts "Seeding users.."
File.open("schema - users.csv", "r") do |f|
  f.each_with_index do |line, index|
    incident_id, email, password, name, city, address, photo, info = line.chomp.split (",")
  User.create(incident_id: incident_id, email: email, password: password, name: name, city: city, address: address, photo: photo, info: info)
  end
end


puts "Seeding posts.."
File.open("schema - posts.csv", "r") do |f|
  f.each_with_index do |line, index|
    incident_id, user_id, user_pic, content, content_local = line.chomp.split (",")
  Post.create(incident_id: incident_id, user_id: user_id, user_pic: user_pic, content: content, content_local: content_local)
  end
end


