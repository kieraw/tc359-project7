# app.rb
require 'sinatra'
require 'holidapi'

class HolidayApp < Sinatra::Base
  get '/' do
    params['country'] ||= 'us'
	params['year'] ||= 2015
	params['month'] ||= 1
   	@holiday = HolidApi.get(country: params['country'], year: params['year'], month: params['month'])
    erb :holidays
  end
end