class CourseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :credit_hours, :days, :start_time, :end_time, :category_id, :capacity
end
