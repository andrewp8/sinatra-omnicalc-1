require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new"){
  erb(:square_new)
}
get("/square/results"){
  @number = params.fetch("number")
  @result = @number.to_f**2
  erb(:square_results)
}

get("/square_root/new"){
  erb(:square_root_new)
}
get("/square_root/results"){
  @number = params.fetch("number")
  @result = Math.sqrt(@number.to_f)
  erb(:square_root_results)
}

get("/payment/new"){
  erb(:payment_new)
}
get("/payment/results"){
  apr = params.fetch("user_apr").to_f
  @converted_apr = apr.to_fs(:percentage,{:precision => 4})

  years = params.fetch("user_years").to_f
  @converted_years = years.to_i

  pv = params.fetch("user_pv").to_f
  @converted_pv = pv.to_fs(:currency)

  r = (apr/12)/100
  n= years*12

  result = (r*pv)/(1-(1+r)**-n)
  @converted_result = result.to_fs(:currency)
  erb(:payment_results)
}
