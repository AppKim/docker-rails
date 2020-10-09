class BoardController < ApplicationController
  def index
    @boardList  = Board.all
  end

  def new
  end

  def create
    if request.referer==nil then 
      redirect_to "/"
    else 
      Board.create(title: params[:title],content: params[:content])
      redirect_to "/"
    end
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    if request.referer==nil then 
      redirect_to "/"
    else 
      @board = Board.find(params[:id])
    end
  end

  def update
    if request.referer==nil then 
      redirect_to "/"
    else
      @board = Board.find(params[:id])
      @board.update(title: params[:title],content: params[:content])
      redirect_to "/"
    end
  end

  def destroy
    if request.referer==nil then 
      redirect_to "/"
    else
      @board = Board.find(params[:id])
      @board.destroy
      redirect_to "/"
    end
  end
end
