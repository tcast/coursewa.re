# Courseware classroom controller
class ClassroomsController < ApplicationController

  # Classroom dashboard
  # Mapped to [Classroom] subdomain
  def dashboard
    @classroom = Classroom.find_by_slug!(request.subdomain)
    @timeline = @classroom.activities
  end

  # Classroom creation page
  def new
  end
end
