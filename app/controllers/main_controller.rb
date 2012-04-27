class MainController < ApplicationController
  def index
  end

  def count
  	@ceiling = params[:ceiling].to_i
  	@numbers = []
	# iterate over params[:ceiling] to find multiples of 3, 5, and both
	@ceiling.times do |i|
		# integer is a multiple of 3 and 5
		if (i % 5 == 0) && (i % 3 == 0)
			if i == (@ceiling * 0.15).floor
				@numbers.push "i &hearts; counting"
			else
				@numbers.push "HearLyrics"
			end
		# integer is multiple of 3
		elsif i % 3 == 0
			@numbers.push "Hear"
		# integer is multiple of 5
		elsif (i % 5 == 0)
			if i == (@ceiling * 0.75).floor
				@numbers.push "Getting closer"
			elsif i == (@ceiling * 0.30).floor
				@numbers.push "*cough*"
			else
				@numbers.push "Lyrics"
			end
		else
			@numbers.push i
		end
	end
  end
end
