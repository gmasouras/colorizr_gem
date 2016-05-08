After installing the colorizr gem we have to call the class method "create_colors". (String.create_colors)
This method generates simple color methods such as "red, blue etc". The methods' names for avalaible colors can be found by calling the class method "colors". It returns an array with the available colors' names. The colors' saturation can be seen by calling the class method
"sample_colors" (Colors' visualization depend on the user's computer).

#Example

require 'colorizr' #This is where we use the gem

String.create_colors #The color methods are generated

String.colors # returns an array with the available colors - [:red, :blue, :pink etc]

puts "Hello world".red # The string "Hello world" is printed on the console in red

String.sample_colors # It prints the available colors for visualization