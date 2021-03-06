require('spec_helper')

describe(PetOwner) do

  describe('.all') do
    it('is empty at first') do
      expect(PetOwner.all()).to(eq([]))
    end
  end

  describe('#==') do
    it('considered identical pet owners as equal') do
      test1 = PetOwner.new({:name => 'Steve', :phone => 555-5555, :animal_species_preference => 'dog', :animal_breed_preference => 'golden retriever', :id => nil})
      test2 = PetOwner.new({:name => 'Steve', :phone => 555-5555, :animal_species_preference => 'dog', :animal_breed_preference => 'golden retriever', :id => nil})
      expect(test1).to(eq(test2))
    end
  end

  describe("#save") do
    it('adds an instance of pet owner to the database') do
      test1 = PetOwner.new({:name => 'Steve', :phone => 555-5555, :animal_species_preference => 'dog', :animal_breed_preference => 'golden retriever', :id => nil})
      test1.save()
      expect(PetOwner.all()).to(eq([test1]))
    end
  end

  describe(".find") do
    it('will find a pet owner by his/her id') do
      test1 = PetOwner.new({:name => 'Steve', :phone => 555-5555, :animal_species_preference => 'dog', :animal_breed_preference => 'golden retriever', :id => nil})
      test1.save()
      test2 = PetOwner.new({:name => 'Martha', :phone => 666-6666, :animal_species_preference => 'cat', :animal_breed_preference => 'siamese', :id => nil})
      test2.save()
      expect(PetOwner.find(test2.id())).to(eq(test2))

    end
  end
end
