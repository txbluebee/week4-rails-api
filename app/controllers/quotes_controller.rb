class QuotesController < ApplicationController

  def index
    @quotes = Quote.all
    author = params[:author]
    @quotes = Quote.search(author)
    json_response(@quotes)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      json_response(@quote, :ok)
    else
      json_response(@quote, :unprocessable_entity)
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

private
  def quote_params
    params.permit(:author, :content)
  end
end
