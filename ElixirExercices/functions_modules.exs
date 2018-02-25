defmodule Test1 do

	def triple(x) do
		3 * x
	end
	
	#solution1
	def quadruple1(x) do
		x + triple(x)
	end
    #solution2
	def quadruple2(x) do
		2 * double(x) 
	end

	def double(x) do
		2 * x
	end

end

