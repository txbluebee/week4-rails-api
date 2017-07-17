require 'rails_helper'

describe "delete a quote route", :type => :request do

  before do
    quote = FactoryGirl.create(:quote)
    delete '/quotes/' + quote.id.to_s
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :ok
  end

end
