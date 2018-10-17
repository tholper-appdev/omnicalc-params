Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get("/flexible/square/:the_num",                    { :controller => "calc", :action => "flex_square" })
    get("/flexible/square_root/:the_num",               { :controller => "calc", :action => "flex_square_root" })
    get("/flexible/payment/:apr/:num_yrs/:principal",   { :controller => "calc", :action => "flex_payment" })
    get("/flexible/random/:min/:max",                   { :controller => "calc", :action => "flex_random" })
    
    get("/square/new",                                  { :controller => "form", :action => "square" })
    get("/square_root/new",                             { :controller => "form", :action => "square_root" })
    get("/payment/new",                                 { :controller => "form", :action => "payment" })
    get("/random/new",                                  { :controller => "form", :action => "random" })

    get("/square/results",                              { :controller => "form", :action => "square_form_results" })
    get("/square_root/results",                         { :controller => "form", :action => "square_root_form_results" })
end
