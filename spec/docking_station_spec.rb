require "../lib/docking_station"

describe DockingStation do

  it 'releases a bike' do
    is_expected.to respond_to(:release_bike)
  end

  it 'gets a bike' do
    expect(subject.release_bike).to be_instance_of Bike
  end

  it 'responds to the dock_bike method with one argument' do
    is_expected.to respond_to(:dock_bike).with(1).argument
  end

  it 'accepts a bike object' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(docking_station.dock_bike(bike)).to be_instance_of Bike
  end

  it 'responds to bike method' do
    is_expected.to respond_to(:bike)
  end

  it 'allows user to see bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    docking_station.dock_bike(bike)
    expect(docking_station.bike).to eq bike
  end


end
