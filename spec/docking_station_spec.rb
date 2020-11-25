require "../lib/docking_station"

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)} 
  
  it 'gets a bike' do
    expect(subject.release_bike).to be_instance_of Bike
  end 
end


