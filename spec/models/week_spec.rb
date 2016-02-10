require 'rails_helper'

describe Week do
  describe 'Validations' do
    subject { Week.new(start_date: '2016-01-26') }

    it { should validate_presence_of(:start_date) }
    it { should validate_uniqueness_of(:start_date) }
  end

  describe 'Associations' do
    it { should have_many(:games) }
  end
end
