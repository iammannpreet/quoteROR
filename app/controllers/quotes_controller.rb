class QuotesController < ApplicationController
    def index
      @quotes = Quote.order(votes: :desc)
    end
  
    def new
      @quote = Quote.new
    end
  
    def create
      @quote = Quote.new(quote_params.merge(votes: 0))
      if @quote.save
        redirect_to root_path, notice: 'Quote added!'
      else
        render :new
      end
    end
  
    def upvote
      @quote = Quote.find(params[:id])
      @quote.increment!(:votes)
      redirect_to root_path
    end
  
    def downvote
      @quote = Quote.find(params[:id])
      @quote.decrement!(:votes)
      redirect_to root_path
    end
  
    private
  
    def quote_params
      params.require(:quote).permit(:content)
    end
  end
  