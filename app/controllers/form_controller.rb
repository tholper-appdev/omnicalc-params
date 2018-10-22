class FormController < ApplicationController
  def square
    render("form_templates/square.html.erb")
  end
  def square_form_results
    if params.fetch("user_number")
      @num = params.fetch("user_number").to_f
    else
      @num = 0
    end
    render("form_templates/square_results.html.erb")
  end  
  
  def square_root
    render("form_templates/square_root.html.erb")
  end
  def square_root_form_results
    if params.fetch("user_number")
      @num = params.fetch("user_number").to_f
    else
      @num = 0
    end
    render("form_templates/square_root_results.html.erb")
  end   
  
  def random
    render("form_templates/random.html.erb")
  end 
  def random_results
    if params.fetch("user_min")
      @min = params.fetch("user_min").to_f
    else
      @min = 0
    end
    if params.fetch("user_max")
      @max = params.fetch("user_max").to_f
    else
      @max = 0
    end     
    render("form_templates/random_results.html.erb")
  end   

  def payment
    render("form_templates/payment.html.erb")
  end   
  def payment_results
    @apr = params.fetch("user_apr").to_f
    @num_yrs = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_i
    
    render("form_templates/payment_results.html.erb")
  end

end
