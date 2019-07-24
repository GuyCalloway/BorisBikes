require 'docking_station'



describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end
  #add a test to your Docking Station that a) gets a bike, then b? expects to be working
end
