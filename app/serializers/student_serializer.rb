class StudentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :first_name, :last_name, :status
end
