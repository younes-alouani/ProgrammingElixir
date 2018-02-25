defmodule Taxes do
	def tax_cal do
		orders = [	[ id: 123, ship_to: :NC, net_amount: 100.00 ],
    				[ id: 124, ship_to: :OK, net_amount:  35.50 ],
    				[ id: 125, ship_to: :TX, net_amount:  24.00 ],
    				[ id: 126, ship_to: :TX, net_amount:  44.80 ],
    				[ id: 127, ship_to: :NC, net_amount:  25.00 ],
    				[ id: 128, ship_to: :MA, net_amount:  10.00 ],
   					[ id: 129, ship_to: :CA, net_amount: 102.00 ],
   					[ id: 120, ship_to: :NC, net_amount:  50.00 ] ]

   		tax_rates = [ NC: 0.075, TX: 0.08 ]
   		
   		for order <- orders do
   			
   			cond do
   			    order[:ship_to] == :NC -> 
   			    	order ++ [total_amount: (1+tax_rates[:NC]) * order[:net_amount]]

   			   order[:ship_to] == :TX ->
   			    	order ++ [total_amount: (1+tax_rates[:TX]) * order[:net_amount]]

   			    true                   ->
   			    	order ++ [total_amount: order[:net_amount]]
   			end
   		end 
	end
end

defmodule Part1chap10 do

    def test([], [ NC: nico, TX: tixo]), do: []

	def test( [[id: ide, ship_to: shipy, net_amount: net_am]|tail], [NC: nico, TX: tixo]) when shipy == :NC do
		[[id: ide, ship_to: shipy, net_amount: net_am, total_amount: net_am*(1+nico)]|test( tail, [NC: nico, TX: tixo])]
	end

	def test( [[id: ide, ship_to: shipy, net_amount: net_am]|tail], [NC: nico, TX: tixo]) when shipy == :TX do
		[[id: ide, ship_to: shipy, net_amount: net_am, total_amount: net_am*(1+tixo)]|test( tail, [NC: nico, TX: tixo])]
	end
    
    def test( [[id: ide, ship_to: shipy, net_amount: net_am]|tail],[NC: nico, TX: tixo]) when shipy != :NC and shipy != :TX do
		[[id: ide, ship_to: shipy, net_amount: net_am, total_amount: net_am+0]|test( tail, [NC: nico, TX: tixo])]
	end

end