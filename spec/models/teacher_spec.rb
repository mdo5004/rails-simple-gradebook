require 'rails_helper'

RSpec.describe Teacher, type: :model do
    
    it "has a first and last name" do
        teacher = Teacher.new(first_name:"Suzie", last_name:"Smith")
        expect(teacher.first_name).to eq("Suzie")
        expect(teacher.last_name).to eq("Smith")
    end
    it "has an email address and password" do
        teacher = Teacher.new(email:"test@example.com", password:"password")
        expect(teacher.email).to eq("test@example.com")
        expect(teacher.password).to_not be_nil
    end
    
    it "is invalid without an email address and password" do
        teacher = Teacher.create
        expect(teacher).to_not be_valid
    end
    it "is valid with just email address and password" do
        teacher = Teacher.create(email:"test@example.com", password:"password")
        expect(teacher).to be_valid
    end
    
    it "has many classes" do
        teacher = Teacher.create(email:"test@example.com", password:"password")
        klass = Klass.create(name:"new class",teacher_id: teacher.id)
        expect(teacher.klasses.first).to equal(klass)
    end
    it "has many students through classes" do
        teacher = Teacher.create(email:"test@example.com", password:"password")
        klass = Klass.create(name:"new class",teacher_id: teacher.id)
        s1 = Student.create(name:"Student McStudent")
        klass.students << s1
        expect(teacher.students.first).to equal(s1)
    end
    it "has many assignments through classes" do
        teacher = Teacher.create(email:"test@example.com", password:"password")
        klass = Klass.create(name:"new class",teacher_id: teacher.id)
        a = Assignment.create(klass_id: klass.id)
        expect(teacher.assignments.first).to equal(a)
    end
    
end
