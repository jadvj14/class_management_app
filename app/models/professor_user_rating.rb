class ProfessorUserRating < ApplicationRecord
  belongs_to :professor
  belongs_to :user
end
