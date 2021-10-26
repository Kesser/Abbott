
json.questions @questions do |question|
  json.id    question.id
  json.title question.title

  json.user do
    json.id question.user.id
    json.name question.user.name
  end

  json.answers question.answers do |answer|
    json.id answer.id 
    json.user_id answer.user.id 
    json.user_name answer.user.name 
  end

end
