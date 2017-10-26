require 'rails_helper'

RSpec.describe Store, type: :model do
  it { should have_many(:items) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:image) }
  it { should validate_uniqueness_of(:name) }

  scenario "can check the image" do

    it "with a valid image" do
      store = create(:store, image: "http://imaging.nikon.com/lineup/lens/zoom/normalzoom/af-s_nikkor28-300mmf_35-56gd_ed_vr/img/sample/sample4_l.jpg")

      expect(store.check_image).to be_truthy
    end

    it "with an invalid image" do
      store = create(:store, image: "random string")

      expect(store.check_image).to be_truthy
    end

  end

end
