require 'rails_helper'

describe 'Visits trips index page' do
  context "as visitor" do
    it "shows names of all trips" do
      name = 'Punch Bowl'
      name2 = 'Rincon'
      start = '2018-05-28 08:37:48'
      end_time = '2018-05-28 12:37:48'
      start2 = '2018-05-28 02:37:48'
      end_time2 = '2018-05-28 10:37:48'
      trip1 = Trip.create!(name: name, start_date: start, end_date: end_time)
      trip2 = Trip.create!(name: name2, start_date: start2, end_date: end_time2)

      visit trips_path

      expect(page).to have_content(trip1.name)
      expect(page).to have_content(trip2.name)
    end
  end
end
