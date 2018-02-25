defmodule MyList do

	# span1 is a solution using Enum.map 
	
	def span1(from,to) when from > to do
		IO.puts("the first argument must be smaller than the second")
	end
	def span1(a,b) do
		Enum.map(a..b, &(&1))
	end

	# span2 is a solution using recursion 
	def span2(a,a) do
		[a]
	end

	def span2(from,to) when from > to do
		IO.puts("the first argument must be smaller than the second")
	end

	def span2(from,to) do
		[from] ++ span2(from+1,to) 
	end
    
end


