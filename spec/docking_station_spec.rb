require "../lib/docking_station"

describe DockingStation do

  let(:docking_station) {described_class.new}
  let(:bike) {Bike.new}

  it 'responds to bike method' do
    is_expected.to respond_to(:stored_bikes)
  end

  it 'returns an empty array for stored_bikes whne initialized' do
    expect(docking_station.stored_bikes).to eq []
  end

  describe '#release_bike' do
    it 'releases a bike' do
      is_expected.to respond_to(:release_bike)
    end

    it 'gets a bike' do
      docking_station.dock(bike)
      expect(docking_station.release_bike).to be_instance_of Bike #cannot use subject here for
    end

    it 'gives error when no bikes available to release' do
      expect { docking_station.release_bike }.to raise_error "no bikes left"
    end
  end

  describe '#dock_bike' do
    it 'responds to the dock_bike method with one argument' do
      is_expected.to respond_to(:dock).with(1).argument
    end

    it 'accepts a bike object' do
      expect(docking_station.dock(bike)).to be_instance_of Bike
    end

    it 'allows user to see bike' do
      docking_station.dock(bike)
      expect(docking_station.stored_bikes).to eq [bike]
    end

    it 'gives an error when a user tries to dock a bike when the docking station already contains 20 bikes' do
      expect { 21.times { docking_station.dock(Bike.new) } }.to raise_error "Docking Station Full"
    end
  end

  # describe 'full?' do
  #    it 'returns false if the station is not full' do 
  #     stored_bikes = []
  #     expect(docking_station.full?(stored_bikes)).to eq false
  #    end 
  #    it 'returns true if the station is full' do
  #     stored_bikes = (1..20).to_a 
  #     expect(docking_station.full?(stored_bikes)).to eq true
  #    end
  # end

  # describe 'empty?' do
  #   it 'returns true if there are no bikes' do
  #     stored_bikes = []
  #     expect(docking_station.empty?(stored_bikes)).to eq true
  #   end 
  #   it 'returns false if there are some bikes' do
  #     stored_bikes = [1]
  #     expect(docking_station.empty?(stored_bikes)).to eq false
  #   end
  # end
end 
