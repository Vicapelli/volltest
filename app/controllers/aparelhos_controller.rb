class AparelhosController < ApplicationController
  before_action :set_aparelho, only: [:show, :destroy]

  def index
    @aparelhos = Aparelho.all
  end

  def show
  end

  def new
    @aparelho = Aparelho.new
  end

  def create
    @aparelho = Aparelho.new(aparelho_params)
    if @aparelho = Aparelho.save
      redirect_to aparelho_path(@aparelho)
    end
  end

  def destroy
    @aparelho = Aparelho.destroy
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
