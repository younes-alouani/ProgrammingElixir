defmodule Taxes do

  def tax_calculating(file_name) do
    for order <- file_to_orders(file_name) do
      [{:id,parse_id(order)},{:ship_to,parse_zone(order)},{:net_amount,parse_amount(order)}]
    end
    
  end

  defp file_to_orders(file_name) do
    Stream.resource(fn -> File.open!(file_name) end,
                fn file ->
                  case IO.read(file, :line) do
                    data when is_binary(data) -> {[data], file}
                    _ -> {:halt, file}
                  end
                end,
                fn file -> File.close(file) end)
    |> Enum.to_list
    |> tl
  end


  defp parse_id(line) do
    Regex.run(~r/^\d+/,line) 
    |> List.first
    |> String.to_integer
  end

  defp parse_zone(line) do
    Regex.run(~r/[A-Z]+/,line)
    |> List.first
    |> String.to_atom
  end

  defp parse_amount(line) do
    Regex.run(~r/\d+[.]\d+/,line) 
    |> List.first
    |> String.to_float
  end
  
end


