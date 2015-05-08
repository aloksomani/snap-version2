require 'rails_helper'

RSpec.describe User do
	it "is invalid without a name" do
		user = User.new(name:nil, email: "roger@example.com", password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: "90210")
		expect(user).to be_invalid
	end

	it "is invalid without an email address" do
		user = User.new(name: "Roger", email: nil, password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: "90210")
		expect(user).to be_invalid
	end

	it "is invalid without a password_digest" do
		user = User.new(name: "Roger", email: "roger@example.com", password_digest: nil, address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: "90210")
		expect(user).to be_invalid
	end

	it "is invalid without an address_line_1" do
		user = User.new(name: "Roger", email: "roger@example.com", password_digest: "password", address_line_1: nil, address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: "90210")
		expect(user).to be_invalid
	end

	it "is invalid without a city" do
		user = User.new(name: "Roger", email: "roger@example.com", password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: nil, state: "California", zipcode: "90210")
		expect(user).to be_invalid
	end

	it "is invalid without a state" do
		user = User.new(name: "Roger", email: "roger@example.com", password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: nil, zipcode: "90210")
		expect(user).to be_invalid
	end

	it "is invalid without a zipcode" do
		user = User.new(name: "Roger", email: "roger@example.com", password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: nil)
		expect(user).to be_invalid
	end

		it "is invalid if a user tries to sign up with an email that already exists" do
		user1 = User.create(name: "Roger", email: "roger@example.com", password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: "90210")
		user2 = User.new(name: "Roger", email: "roger@example.com", password_digest: "password", address_line_1: "1234 Example Way", address_line_2: "Suite 200", city: "Los Angeles", state: "California", zipcode: "90210")
		expect(user1).to be_valid
		expect(user2).to be_invalid
	end

end
