require 'bike'

describe Bike do
  it "Bike responds to working method" do
    expect(subject).to respond_to :working?
  end
end
