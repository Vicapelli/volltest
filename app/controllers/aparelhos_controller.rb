class AparelhosController < ApplicationController
  before_action :set_aparelho, only: [:show, :edit, :update, :destroy]

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
    if @aparelho.save
      redirect_to aparelho_path(@aparelho)
    end
  end

  def edit
  end

  def update
    @aparelho.update(aparelho_params)
    redirect_to aparelho_path(@aparelho)
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
