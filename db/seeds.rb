# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def load_course
  course_json = JSON.parse(File.read(Dir.pwd + "/db/json/course.json"))
  course_json.each do |item|
    Course.create(code: item['code'], name: item['name'], course_id: item['id'], description: item['description'], term: item['term'])
  end
end

def load_instructor
  instructor_json = JSON.parse(File.read(Dir.pwd + "/db/json/instructor.json"))
  instructor_json.each do |item|
    Instructor.create(last: item['last'], first: item['first'], middle: item['middle'], instructor_id: item['id'], email: item['email'])
  end
end

def load_subject
  subject_json = JSON.parse(File.read(Dir.pwd + "/db/json/subject.json"))
  subject_json.each do |item|
    Subject.create(abbreviation: item['abbreviation'], name: item['name'], subject_id: item['id'], term: item['term'])
  end
end


load_course()
load_instructor()
load_subject()
