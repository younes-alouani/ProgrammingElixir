defmodule Format do
	
	
	def center(strings) do
		Enum.each(strings, fn x -> IO.puts(_center(x,_stg_mxlenght(strings))) end)
	end

	defp  _stg_mxlenght(strings) when is_list(strings) do
		strings
		|>	Enum.max_by(fn x -> String.length(x) end)
		|> 	String.length
	end

	defp _center(string,max_lenght) do
		string 
		|> String.pad_leading(String.length(string) + div(max_lenght-String.length(string),2))
		|> String.pad_trailing(String.length(string) + 2*div(max_lenght-String.length(string),2)+ rem(max_lenght-String.length(string),2))
	end
end
