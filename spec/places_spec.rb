require('rspec')
require('places')

describe(Place) do
  describe("#description") do
    it("describes places you've been") do
      test_place = Place.new("Jamaica")
      expect(test_place.description()).to(eq("Jamaica"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds places to the array of saved places') do
      test_place = Place.new('NYC')
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end
  describe('.clear') do
    it('empties out all of the saved places') do
      Place.new('NYC').save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
