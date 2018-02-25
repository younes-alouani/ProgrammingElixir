defmodule Gosu do

	def guess(x,a..b) when x == a do a end
	def guess(x,a..b) when x == b do b end
	def guess(x,a..b) when x in a..(a+div(b-a,2)) do 
	    guess(x,a..(a+div(b-a,2)))
	end
	def guess(x,a..b) when x in (a+div(b-a,2))..b do 
	    guess(x,(a+div(b-a,2))..b)
	end
	
end


