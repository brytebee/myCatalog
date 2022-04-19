require 'date'

@today = Date.today
@twelve_years = Date.new(@today.year - 12, @today.month, @today.day)


puts @twelve_years