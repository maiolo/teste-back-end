json.array! @contacts do |contact|
  json.extract! contact, :id, :name, :email
end