class Professor < ApplicationRecord
  has_many :course_professors
  has_many :courses, :through => :course_professors
  has_many :professor_user_ratings
end
