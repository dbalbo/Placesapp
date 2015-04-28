require('rspec')
require('places')

describe(Place) do
  describe("#description") do
    it("describes places you've been") do
      test_place = Place.new("Jamaica")
      expect(test_place.description()).to(eq("Jamaica"))
    end
  end
end
