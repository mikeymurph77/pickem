require 'rails_helper'

describe Team do
  describe 'Validations' do
    subject { Team.new(name: 'Patriots', location: 'New England') }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_uniqueness_of(:name) }
  end

  it "returns a team's full name as a string" do
    team = build(:team, name: 'Patriots', location: 'New England')

    expect(team.city_and_name).to eq 'New England Patriots'
  end
end
