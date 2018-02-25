defmodule Calcul do

	
	def calculation(x) do
		cond do
		  ?+ in x -> sum?(x)
		  ?* in x -> prod?(x) 
		  ?- in x -> subs?(x)
		  ?/ in x -> div?(x)
		end
	end
  

   # SUM
   defp sum?(x) do
   		l = Enum.split_while(x, &(&1 != ?+))
   	    List.to_integer(elem(l,0)) + List.to_integer(elem(l,1)-- '+')
   end
   # Division
   defp div?(x) do
   		l = Enum.split_while(x, &(&1 != ?/))
   	    div(List.to_integer(elem(l,0)), List.to_integer(elem(l,1)-- '/'))
   end
   #subtraction
   defp subs?(x) do
   		l = Enum.split_while(x, &(&1 != ?-))
   	    List.to_integer(elem(l,0)) - List.to_integer(elem(l,1)-- '-')
   end

   defp prod?(x) do
   		l = Enum.split_while(x, &(&1 != ?*))
   	    List.to_integer(elem(l,0)) * List.to_integer(elem(l,1)-- '*')
   end

	
end
