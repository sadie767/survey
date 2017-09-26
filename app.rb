require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get ("/") do
  @surveys = Survey.all()
  erb(:index)
end

post ("/add_survey") do
  title = params.fetch("survey_title")
  a_name = params.fetch("author_name")
  @survey = Survey.create({:title => title, :author => a_name})
  @survey.save()
  @surveys = Survey.all()
  erb(:index)
end

get ("/survey/:id") do
  @survey = Survey.find(params.fetch("id").to_i())
  @surveys = Survey.all()
  @question = Question.all()
  erb(:survey_info)
end

post ("/add_question/:id") do
  @survey_id = Survey.find(params.fetch("id").to_i())
  question = params.fetch("add_question")
  @question = Question.create({:question => question, :survey_id => @survey_id})
  @question.save()
  redirect("/survey/#{@survey_id.id}")
end
