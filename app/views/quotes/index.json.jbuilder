# json.data do
#   json.array! @quotes, :id, :author, :content
# end

json.data do
  json.array! @quotes do |quote|
    json.partial! 'quotes/quote', object: quote
  end
end
