class CourseController < ClientAppControllerController
  def list
    @menu_name = 'COURSES'
    @courses = Course.all
  end
end
