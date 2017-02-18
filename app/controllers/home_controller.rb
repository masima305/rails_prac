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
    @ing1 = params[:ing1]
    @ing2 = params[:ing2]
    @ing3 = params[:ing3]
    @ing4 = params[:ing4]
    
    new_recip = Recip.new
    
    new_recip.ing_1 = @ing1
    new_recip.ing_2 = @ing2
    new_recip.ing_3 = @ing3
    new_recip.ing_l = @ing4
    new_recip.save
    redirect_to "/home/recp"
  end
  
  def recp
    @recip_list = Recip.all.order("id desc")
  end
  
  def destroy
    @one_recip = Recip.find(params[:id])
    @one_recip.destroy
    redirect_to "/home/recp"
  end
  
  def update_view
    @one_recip = Recip.find(params[:id])
  end
  
  def update_write
    @one_recip = Recip.find(params[:id])

    @ing1 = params[:ing1]
    @ing2 = params[:ing2]
    @ing3 = params[:ing3]
    @ing4 = params[:ing4]
    
    
    @one_recip.ing_1 = @ing1
    @one_recip.ing_2 = @ing2
    @one_recip.ing_3 = @ing3
    @one_recip.ing_l = @ing4
    @one_recip.save
    redirect_to "/home/recp"

    
  end
  
  def reple
    new_reple = Reple.new
    new_reple.name = params[:name]
    new_reple.contents = params[:contents]
    new_reple.recip_id = params[:recipId]
    new_reple.save
    redirect_to "/home/recp"
  end
end
