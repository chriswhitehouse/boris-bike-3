require "../lib/docking_station"

describe DockingStation do

  let(:docking_station) {described_class.new}
  let(:bike) {Bike.new}

  it 'responds to bike method' do
    is_expected.to respond_to(:bike)
  end

  describe '#release_bike' do
    it 'releases a bike' do
      is_expected.to respond_to(:release_bike)
    end

    it 'gets a bike' do
      docking_station.dock_bike(bike)
      expect(docking_station.release_bike).to be_instance_of Bike #cannot use subject here for
    end

    it 'gives error when no bikes available to release' do
      expect { docking_station.release_bike }.to raise_error "no bikes left"
    end
  end

  describe '#dock_bike' do
    it 'responds to the dock_bike method with one argument' do
      is_expected.to respond_to(:dock_bike).with(1).argument
    end

    it 'accepts a bike object' do
      expect(docking_station.dock_bike(bike)).to be_instance_of Bike
    end

    it 'allows user to see bike' do
      docking_station.dock_bike(bike)
      expect(docking_station.bike).to eq bike
    end
  end

end
