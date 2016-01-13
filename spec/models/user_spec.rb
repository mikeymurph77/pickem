require 'rails_helper'

describe User do
  subject { User.new(email: 'foo@bar.com', password_digest: 'password', username: 'foo') }

  it "is valid with a username, first_name, last_name, password and email" do
    user = User.new(
      username: "Bob77",
      first_name: "Bob",
      last_name: "Willson",
      password_digest: "abcd1234",
      email: "bob77@testemail.com"
    )

    expect(user).to be_valid
  end

  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_uniqueness_of(:email) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_uniqueness_of(:email) }

  it "returns a user's full name as a string" do
    user = User.new(
      first_name: "Bob",
      last_name: "Willson"
    )

    expect(user.name).to eq 'Bob Willson'
  end
end
