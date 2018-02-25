defmodule Enumy do
	
    def flatinu([]), do: []
	def flatinu([head | tail]) when (is_list(head) == true ) do
		flatinu(head ++ tail)
	end
	def flatinu([head | tail]) when (is_list(head) == false ) do
		[head] ++ flatinu(tail)
	end

end


