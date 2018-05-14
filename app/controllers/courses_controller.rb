class CoursesController < ClientAppControllerController
  def index
    @menu_name = 'COURSES'
    @courses = Course.all
    puts @courses.length
  end
end
