defmodule MyList do

	
    # Principal function

	def maxu(a, start \\ -1_000_000_000 )

	def maxu([], start), do: start

	def maxu([head | tail], start) do 
		maxu(tail, func1(head, start))
	end

	# private function

	def func1(x,y) when x > y do
		x
	end
	def func1(x,y) when x <= y do
		y
	end



end


