require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it "releases working bikes" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end

  it "makes docking possible" do
    expect(subject).to respond_to(:docker)
  end

  it "will raise an error release_bike activated when none available" do
    expect { subject.release_bike }.to raise_error("No bike available")
  end

  it "will raise an error when trying to dock at capacity" do
    20.times{subject.docker}
    expect { subject.docker }.to raise_error("at max capacity")
  end

  it 'allows for new instance of docking station to be created where capacity can be set' do
    docking_station = DockingStation.new(5)
    expect(docking_station.capacity).to eq(5)
  end

  it 'Raise an error if sixth bike added to new station of capacity 5' do
    docking_station = DockingStation.new(5)
    5.times{docking_station.docker}
    expect{docking_station.docker}.to raise_error("at max capacity")
  end

end
