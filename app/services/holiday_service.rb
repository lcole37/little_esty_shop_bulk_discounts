class HolidayService

  def self.get_data
    response = HTTParty.get("https://date.nager.at/api/v3/NextPublicHolidays/US")
    data = response.body
    parsed = JSON.parse(data, symbolize_names: true)
  end

  def self.next_3_holidays
    get_data[0..2].map do |data|
      Holiday.new(data)
    end
  end

end
