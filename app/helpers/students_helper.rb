module StudentsHelper

  def github_link(student)
    link_to 'GitHub account', "https://github.com/#{student.github_user}",
            target: '_blank', class: 'list-group-item'
  end

  def heroku_link(student)
    link_to 'Heroku application', "https://#{student.heroku_app}.herokuapp.com/",
            target: '_blank', class: 'list-group-item' if student.heroku_app
  end
end
