class HomeController < ApplicationController

  def trash_em
    @trash_em = List.where( :wykonane => true).destroy_all
    redirect_to lists_url, notice: "Wykonane zadania zostały usunięte!"
  end

  def trash_em_all
    @trash_em_all = List.all.destroy_all
    redirect_to lists_url, notice: "Wszystkie zadania zostały usunięte!"
  end

end