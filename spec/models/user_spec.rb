require 'rails_helper'

describe User do
  describe 'Validations' do
    subject { User.new(email: 'foo@bar.com', password_digest: 'password', username: 'foo') }

    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:email) }

    it "has a valid factory" do
      expect(build(:user)).to be_valid
    end
  end

  it "returns a user's full name as a string" do
    user = User.new(
      first_name: "Bob",
      last_name: "Willson"
    )

    expect(user.name).to eq 'Bob Willson'
  end
end
