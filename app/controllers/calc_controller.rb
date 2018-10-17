class CalcController < ApplicationController
  def flex_square
    @num = params.fetch("the_num")
    
    render("calc_templates/flexible_square.html.erb")
  end
  def flex_square_root
    @num = params.fetch("the_num")
    
    render("calc_templates/flexible_square_root.html.erb")
  end
end
