class Professor < ApplicationRecord
  has_many :course_professors
  has_many :courses, :through => :course_professors
  has_many :professor_user_ratings

  def self.get_professors(course_id)
    return self.find_by_sql(["SELECT p.id AS professor_id, coalesce(p.first_name, '') || ' ' || coalesce(p.last_name, '') AS name, avg(coalesce(pur.rating, 0)) AS rating FROM professors p
                              LEFT OUTER JOIN professor_user_ratings pur
                                ON pur.professor_id = p.id
                              WHERE (pur.course_id = ? OR ? = 0)
                              GROUP BY p.id, coalesce(p.first_name, '') || ' ' || coalesce(p.last_name, '')", course_id, course_id])
  end
end
