require 'rails_helper'

RSpec.describe Teacher, type: :model do
    before(:each) do
        
    end
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
end
