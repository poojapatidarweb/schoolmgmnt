student = Student.create(
  first_name: "Pooja",
  last_name: "patidar",
  email: "patidar@gmail.com"
)

20.times do |i|
  puts "Creating student #{i+1}"
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "last name #{i+1}",
    email: "student #{i+1}@gmail.com"
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy blog for Student #{student.id}",
  content: 'not defined')
  student.blogs.create(title: "Dummy blog for Student #{student.id}",
  content: 'not defined')
end
