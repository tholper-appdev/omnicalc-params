class FormController < ApplicationController
  def square

    render("form_templates/square.html.erb")
  end
  def square_form_results
    
    if params.fetch("user_number")
      @num = params.fetch("user_number")
    else
      @num = 0
    end
    
    render("form_templates/square_results.html.erb")
  end  
  
  
  def square_root
    #@num = params.fetch("the_num")
    @num = 0
    
    render("form_templates/square_root.html.erb")
  end
  def payment
    #@apr = params.fetch("apr").to_f/100
    #@num_yrs = params.fetch("num_yrs").to_i
    #@principal = params.fetch("principal").to_i
    @apr = 0
    @num_yrs = 0
    @principal = 0
    
    render("form_templates/payment.html.erb")
  end
  def random
    #@min = params.fetch("min").to_i
    #@max = params.fetch("max").to_i
    @min = 0
    @max = 0
     
    render("form_templates/random.html.erb")
  end 
  

end
