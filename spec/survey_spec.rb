require 'spec_helper'

describe Survey do
  describe "associations" do
    context "testing my understanding of Activerecord associations" do
      it "belongs to a user" do
        animal_sounds = Survey.find_by_title("Animal Sounds")
        expect(animal_sounds.user.username).to eql("jacky")
      end

      it "has many participants" do 
        animal_sounds = Survey.find_by_title("Animal Sounds")
        expect(animal_sounds.participants.length).not_to eql(0); 
      end 

      
    end
  end

  pending "tests for validations are not written. Nor are the validations" do

  end

end
