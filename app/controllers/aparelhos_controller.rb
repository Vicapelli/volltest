class AparelhosController < ApplicationController
  before_action :set_aparelho, only: [:show, :update, :destroy]

  def index
    @aparelhos = Aparelho.all
    render json: @aparelhos
  end

  def show
    render json: @aparelho
  end


  def create
    @aparelho = Aparelho.new(aparelho_params)
    if @aparelho.save
      render json: @aparelho, status: :created, location: @aparelho
    else
      render json: @aparelho.errors, status: :unprocessable_entity
    end
  end


  def update
    if @aparelho.update(aparelho_params)
      render json: @aparelho
    else
      render json: @aparelho.errors, status: :unprocessable_entity
    end
    
  end

  def destroy
    @aparelho.destroy
    redirect_to aparelhos_path
  end

  private

  def set_aparelho
    @aparelho = Aparelho.find(params[:id])
  end

  def aparelho_params
    params.require(:aparelho).permit(:numero, :operadora, :status)
  end

end
