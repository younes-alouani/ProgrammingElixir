defmodule Primes do	
        
        def up_to(y) do
		for n <- 2..y, is_prime?(n) == %{}, do: n
	end

        defp is_prime?(n) when (n != 2 and n != 3) do
		for x <- 2..div(n,2), rem(n,x) == 0, into: %{}, do: {n,"not prime"}
	end
	defp is_prime?(n) when (n == 2 or n == 3) do
		%{}
	end

end