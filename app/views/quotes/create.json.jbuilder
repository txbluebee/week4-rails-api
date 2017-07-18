json.data do
  json.quote do
    json.partial! 'quotes/quote', object: @quote
  end
end
