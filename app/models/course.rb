class Course < ApplicationRecord
  has_many :course_professors
  has_many :professors, :through => :course_professors
end
