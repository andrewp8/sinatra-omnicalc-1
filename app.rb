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
  erb(:payment_results)
}
