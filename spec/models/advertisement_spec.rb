require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:ad) { Advertisement.create!(title: "New Ad Title", copy: "New Ad Body", price: 222) }

  describe "attributes" do
    it "has title, copy and price attributes" do
      expect(ad).to have_attributes(title: "New Ad Title", copy: "New Ad Body", price: 222)
    end
  end
end
