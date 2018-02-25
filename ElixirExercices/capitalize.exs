def capitalize_sentences(mysentence) do
	mysentence
	|> String.split( ~s'.\s' ) #Split the sentence everytime it matches ".\s" , note that \s is for space
	|> Enum.map( fn(x) -> String.capitalize(x) end ) # We make the first letter of every word an uppercase
	|> Enum.join( ~s'.\s' ) # We concatenate the words and seperating them by adding ".\s" , note that \s is for space
end


