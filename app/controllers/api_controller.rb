class ApiController < ApplicationController

  def index
    if params[:format] == 'json'
      render json: { bar: params[:bar] }
    else
      render text: params[:bar]
    end
  end

  def create
    render json: {
      bar: params[:bar],
      foo: 1
    }, status: :created
  end

end
