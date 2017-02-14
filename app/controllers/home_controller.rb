class HomeController < ApplicationController
  def index
    @base = "베이스 음료"
    @fir_ing = ["ing_one", "ing_two", "ing_three", "1", "2", "3", "4"]
    @sel_ing = @fir_ing.sample # pick random ingr
    @sel3_ing = @fir_ing.sample(3).sort # pick 3 random ingr
    @numbers = (1..45).to_a.sample(5).sort! # 1~45 num to array.
    @img_ing = @sel_ing + ".jpg"
  end
  
  def write
    @ing1 = params[:fir]
    @ing2 = params[:se]
    @ing3 = params[:thir]
    @ing4 = params[:last]
    redirect_to "/recp"
    
    new_recip = Recip.new_recip
  end
  
  def recp
    
  end
  
end
