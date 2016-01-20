require 'rails_helper'

describe Team do
  subject { Team.new(name: 'Patriots', city: 'New England') }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:city) }
  it { should validate_uniqueness_of(:name) }

  it "returns a team's full name as a string" do
    expect(build(:team).city_and_name).to eq 'New England Patriots'
  end
end
