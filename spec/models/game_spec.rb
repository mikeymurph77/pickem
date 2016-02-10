require 'rails_helper'

describe Game do
  describe 'Validations' do |variable|
    it { should validate_presence_of(:start_time) }
    it { should validate_presence_of(:week_id) }
    it { should validate_presence_of(:home_team) }
    it { should validate_presence_of(:away_team) }
  end

  describe 'Associations' do |variable|
    it { should belong_to(:week) }
  end
end
