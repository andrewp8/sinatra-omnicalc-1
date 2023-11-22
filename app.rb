require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new"){
  erb(:square_new)
}
get("/square/results"){
  erb(:square_results)
}

get("/square_root/new"){
  erb(:square_root_new)
}
get("/square_root/results"){
  erb(:square_root_results)
}
