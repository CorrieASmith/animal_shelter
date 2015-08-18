require('spec_helper')

describe(Animal) do

  describe('.all') do
    it('starts off with no animals') do
      expect(Animal.all).to(eq([]))
    end
  end

  describe('#==') do
    it("is the same animal if it has the same id") do
      animal1 = Animal.new({:name => 'Fluffy', :gender => 'boy', :date_of_admittance => '2015-6-05', :age => 1, :species => 'dog', :breed => 'aussie shepherd', :id => nil})
      animal2 = Animal.new({:name => 'Fluffy', :gender => 'boy', :date_of_admittance => '2015-6-05', :age => 1, :species => 'dog', :breed => 'aussie shepherd', :id => nil})
      expect(animal1).to(eq(animal2))
    end
  end

  describe('#save') do
    it('will add an instance of animal to the database') do
      animal1 = Animal.new({:name => 'Fluffy', :gender => 'boy', :date_of_admittance => '2015-6-05', :age => 1, :species => 'dog', :breed => 'aussie shepherd', :id => nil})
      animal1.save()
      expect(Animal.all).to(eq([animal1]))
    end
  end

  describe('.find') do
    it('returns an animal by its id') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil })
      test_animal.save()
      test_animal2 = Animal.new({:name => 'Sammie', :gender => 'boy', :date_of_admittance => '2015-6-05', :age => 1, :species => 'bird', :breed => 'parakeet', :id => nil})
      test_animal2.save()
      expect(Animal.find(test_animal2.id())).to(eq(test_animal2))
    end
  end

  describe('#name') do
    it('returns the name of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      expect(test_animal.name()).to(eq('Gandie'))
    end
  end

  describe('#gender') do
    it('returns the gender of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      expect(test_animal.gender()).to(eq('girl'))
    end
  end

  describe('#date_of_admittance') do
    it('returns the date_of_admittance of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      expect(test_animal.date_of_admittance()).to(eq('2015-6-05'))
    end
  end

  describe('#age') do
    it('returns the age of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      expect(test_animal.age()).to(eq(2))
    end
  end

  describe('#species') do
    it('returns the species of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      expect(test_animal.species()).to(eq('bird'))
    end
  end

  describe('#breed') do
    it('returns the breed of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      expect(test_animal.breed()).to(eq('parakeet'))
    end
  end

  describe('#id') do
    it('returns the id of an animal') do
      test_animal = Animal.new({:name => 'Gandie', :gender => 'girl', :date_of_admittance => '2015-6-05', :age => 2, :species => 'bird', :breed => 'parakeet', :id => nil})
      test_animal.save()
      expect(test_animal.id()).to(be_an_instance_of(Fixnum))
    end
  end
end
