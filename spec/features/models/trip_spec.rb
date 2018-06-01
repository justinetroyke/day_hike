require 'rails_helper'

describe 'gets total of trip' do
  it 'totals trail amounts' do
    name = 'Summer Swim'
    start = '2018-05-28 08:37:48'
    end_time = '2018-05-28 12:37:48'
    trail_name = 'Switchbacks'
    length = 4
    address = '123 Santa Paula rd, SP CA 93060'
    trail_name2 = 'Punch Bowl'
    length2 = 3
    address2 = '123 Santa Paula rd, SP CA 93060'
    trip = Trip.create!(name: name, start_date: start, end_date: end_time)
    trail1 = trip.trails.create!(length: length, name: trail_name, address: address)
    trail2 = trip.trails.create!(length: length2, name: trail_name2, address: address2)

    expect(trip.total_distance).to eq(7)
  end
end
