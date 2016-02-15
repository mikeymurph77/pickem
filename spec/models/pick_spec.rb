require 'rails_helper'

describe Pick do
  describe 'Validations' do |variable|
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:game_id) }
  end

  describe 'Associations' do |variable|
    it { should belong_to(:user) }
    it { should belong_to(:game) }
    it { should belong_to(:team) }
  end
end
