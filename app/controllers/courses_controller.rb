class CoursesController < ClientAppControllerController
  def index
    @menu_name = 'COURSES'
    @courses = Course.all
    puts @courses.length
  end

  def new
    @menu_name = 'NEW COURSE'
    @class_professors = []
    @all_professors = Professor.get_professors(0)
  end
end
