# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student1 = Student.create(first_name: 'Paul', last_name: 'Cinoman', status: "Full-time")
category1 = Category.create(name: 'Software Engineering')
course1 = Course.create(title: 'Intro to Computer Science', credit_hours: 3, description: 'Introducing basic concept of computing: discrete models, computer architecture and organization, operating systems, programming languages, software design and construction, performance evaluation, with a focus on programming.', days: 'TR', start_time: '12:00', end_time: '13:30', capacity: 30, category_id: 1)
enrollment1 = Enrollment.create(student_id: 1, course_id: 1)