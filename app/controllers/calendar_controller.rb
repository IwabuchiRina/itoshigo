class CalendarController < ApplicationController
  def index
    @pets = Pet.where(user_id: current_user.id)
    pet_id = params[:pet_id]
    posts = Post.where(pet_id: pet_id).where(status: 2)
    @events = []
    posts.each do |post|
      @events.push({
        title: post.title,
        date: post.created_at.strftime("%Y-%m-%d"),
        url: post_path(post.id),
      })
    end
    if pet_id.present?
      pet = Pet.find(pet_id)
      @events.push({
        title: "#{pet.name}の誕生日",
        date: pet.birthday.strftime("%Y-%m-%d"),
        url:nil,
      })  
      else
      tasks = Task.where(user_id: current_user.id)
      tasks.each do |task| 
        @events.push({
          title: task.name,
          date: task.plan_date.strftime("%Y-%m-%d"),
          url: task_path(task.id),
      })
      end
    end
  end
end
