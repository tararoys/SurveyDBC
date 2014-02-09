require 'spec_helper'

describe User do
   context "when creating an empty user that you don't want to insert into the database yet" do
    it "use User.new()" do
      
      user = User.new()

      expect(user.id).to eql(nil)
      expect(user.username).to eql(nil)
      expect(user.password_hash).to eql(nil)
      expect(User.all.length).to eql(1)

    end     
  end

  context "When creating a user with a name(more generally, creating a new object using parameters)" do
    it "use four ways to set values creating a new user" do
      
      tara = User.new(username: "Tara")
      expect(tara.username).to eql("Tara")

      kori = User.new({username: "Kori"})
      expect(kori.username).to eql("Kori")

      steven = User.new
      steven.username = "Steven"
      expect(steven.username).to eql("Steven")

      carolyn = User.new do |c|
        c.username = "Carolyn"
      end
      expect(carolyn.username).to eql("Carolyn")

    end
    
  end 

end
