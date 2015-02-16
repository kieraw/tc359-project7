# app.rb
require 'sinatra'
require 'holidapi'

class HolidayApp < Sinatra::Base
	get '/' do
   		@holiday = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month)
   		@bday_holiday = HolidApi.get(country: 'us', year: 1994, month: 2)
    	erb :holidays
    end
end