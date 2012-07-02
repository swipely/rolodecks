require 'spec_helper'

describe Connection do
  let(:a) { Contact.create!(first_name: 'Fred', last_name: 'Fred', email: 'fred@test.com', phone: '555-555-5555') }
  let(:b) { Contact.create!(first_name: 'Bob', last_name: 'Bob', email: 'bob@test.com', phone: '555-555-5555') }

  before { Connection.connect(a, b) }

  describe ".connect" do
    it 'creates a Connection record in the database' do
      Connection.exists?(contact1: a.id, contact2: b.id).should be_true
    end
  end

  describe ".connected?" do
    it 'returns true when the connection is in the database' do
      Connection.connected?(a, b).should be_true
    end

    it 'returns true when the connection is in the database, even when queried in the opposite direction' do
      Connection.connected?(b, a).should be_true
    end

    it 'returns false when there is no connection' do
      let(:c) { Contact.create!(first_name: 'Jane', last_name: 'Jane', email: 'jane@test.com', phone: '555-555-5555') }
      Connection.connected?(b, c).should be_false
    end
  end
end
