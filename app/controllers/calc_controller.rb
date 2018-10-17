class CalcController < ApplicationController
  def flex_square
    @num = params.fetch("the_num")
    
    render("calc_templates/flexible_square.html.erb")
  end
  def flex_square_root
    @num = params.fetch("the_num")
    
    render("calc_templates/flexible_square_root.html.erb")
  end
  def flex_payment
    @apr = params.fetch("apr").to_f/100
    @num_yrs = params.fetch("num_yrs").to_f
    @principal = params.fetch("principal").to_f
    
    render("calc_templates/flexible_payment.html.erb")
  end
  def flex_random
    @min = params.fetch("min").to_i
    @max = params.fetch("max").to_i
     
    render("calc_templates/flexible_random.html.erb")
  end  
end
