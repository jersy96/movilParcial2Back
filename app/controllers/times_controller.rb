class TimesController < ApplicationController
  def index
    times = [
      {time: (Time.now.utc - 5.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Colombia'},
      {time: (Time.now.utc - 4.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Venezuela'},
      {time: (Time.now.utc - 10.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Hawaii'},
      {time: (Time.now.utc + 1.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Inglaterra'},
      {time: (Time.now.utc + 2.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Francia'},
      {time: (Time.now.utc + 8.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'China'},
      {time: (Time.now.utc + 9.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Japon'},
      {time: (Time.now.utc - 3.hours).strftime('%Y-%m-%d %I:%M:%S %p'), country: 'Argentina'}
    ]
    render json: times.sample, status: :ok
  end
end
