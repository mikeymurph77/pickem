require 'rails_helper'

describe Season do
  describe 'Validations' do
    subject { Season.new(start_date: '2016-01-26') }

    it { should validate_presence_of(:start_date) }
    it { should validate_uniqueness_of(:start_date) }
  end
end
