require 'rails_helper'

describe Game do
  it { should validate_presence_of(:start_time) }
  it { should validate_presence_of(:week_id) }
  it { should validate_presence_of(:home_team_id) }
  it { should validate_presence_of(:away_team_id) }
  it { should belong_to(:week) }
end
