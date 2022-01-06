require 'rails_helper'

RSpec.describe User, type: :model do

  subject { User.new(name: "Zikre", email: "zikre@gmail.com") }

  it "is a valid user with valid email" do
    expect(subject).to be_valid
  end

  it "is not a valid user because of an invalid email" do
    subject.email = "zikrezikre"
    expect(subject).to_not be_valid
  end

end
