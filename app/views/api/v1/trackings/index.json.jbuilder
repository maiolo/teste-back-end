json.array! @trackings do |tracking|
  json.extract! tracking, :uuid, :page, :created_at
end