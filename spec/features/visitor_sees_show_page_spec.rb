require 'rails_helper'

describe 'Visits trip show page' do
  context "as visitor" do
    it "sees list of trails" do
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

      visit trip_path(trip)

      expect(page).to have_content(trail1.name)
      expect(page).to have_content(trail2.name)
      expect(page).to have_content(trail1.address)
      expect(page).to have_content(trail2.address)
      expect(page).to have_content(trail1.length)
      expect(page).to have_content(trail2.length)
    end

    it "sees total hiking distance of trip" do
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

      visit trip_path(trip)

      expect(page).to have_content('Total Hiking Distance:')
      expect(page).to have_content(7)
    end

    it "sees average hiking distance of trip" do
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

      visit trip_path(trip)

      expect(page).to have_content('Average Hiking Distance:')
      expect(page).to have_content(3.5)
    end

    it "sees longest hiking distance of trip" do
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

      visit trip_path(trip)

      expect(page).to have_content('Longest Hiking Distance:')
      expect(page).to have_content(4)
    end

    it "sees shortest hiking distance of trip" do
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

      visit trip_path(trip)

      expect(page).to have_content('Shortest Hiking Distance:')
      expect(page).to have_content(3)
    end

    it "sees shortest hiking distance of trip" do
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

      visit trip_path(trip)

      click_link trail_name

      expect(current_path).to eq(trail_path(trail1))
      expect(page).to have_content(trail1.name)
    end
  end
end
