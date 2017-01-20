# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

get '/contact' do
  "142, Zaw Gyi Street, South Dagon Industrial Zone, Yangon, Myanmar" 
end



# write a GET route with
# route parameters

get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

get '/great_job' do
  name = params[:name]
  if name
    "Good Job!, #{name}."
  else
    "Good Job!!"
  end
end

get '/add_numbers' do
  value1 = params[:val1].to_i
  value2 = params[:val2].to_i
  result = value1+value2

  "The result is #{result}"

end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

get '/search' do
  students = db.execute("#{params[:search]}")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
  # searchterm = params[:search]
  # students = db.execute("SELECT * FROM students")
  # p params
  # results = db.execute("#{params[:search]}")
  # response = ""
  # result.each do |eachresult|
  #   response << "<b>ID</b>: #{eachresult['id']}<br>"
  #   response << "<b>Name</b>: #{eachresult['name']}<br>"    
  #   response << "<b>Age</b>: #{eachresult['age']}<br>"
  #   response << "<b>Campus</b>: #{eachresult['campus']}<br><br>"
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end