require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  describe '#release_bike' do
    it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes available' do
      expect { subject.release_bike }.to raise_error 'no bikes available'
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }
<<<<<<< HEAD

=======
>>>>>>> 1b1b60f7f0a69637472ce1768349de8121091399

  it "docks bikes" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end


  it "return docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'docking station full'
    end
  end
end
