require 'rails_helper'

describe "update a quote route", :type => :request do

  before do
    quote = FactoryGirl.create(:quote)
    patch '/quotes/' + quote.id.to_s, params: { :author => 'test_author', :content => 'test_content' }
  end

  it 'updates the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'updates the quote content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status :ok
  end

end
