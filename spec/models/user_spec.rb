require 'rails_helper'

describe User do
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

  it "is invalid without an email address" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it "is invalid without a password" do
    user = User.new(password_digest: nil)
    user.valid?
    expect(user.errors[:password_digest]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    User.create(
      username: "Bob77",
      password_digest: "abcd1234",
      email: "bob77@testemail.com"
    )

    user = User.new(
      password_digest: "onetwothree",
      email: "bob77@testemail.com"
    )

    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  it "returns a user's full name as a string" do
    user = User.new(
      first_name: "Bob",
      last_name: "Willson"
    )

    expect(user.name).to eq 'Bob Willson'
  end
end
