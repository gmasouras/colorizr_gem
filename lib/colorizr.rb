class String

    @@my_colors = {red: 31, green: 32, yellow: 33, blue: 34, pink: "38;5;218", light_blue: 94, white: 97, light_grey: 37, black: 30}

	def self.create_colors
		@@my_colors.each {|key, value|
			send(:define_method, "#{key}") {
				"\e[#{value}m#{self}\e[0m"
			}
		}
	end

    def self.colors
    	@@my_colors.keys
    end


    def self.sample_colors
    	create_colors
    	print_colors
    end

    private 

    def self.print_colors
    	my_colors_to_s = colors.map {|color| color.to_s}
    	my_colors_to_s.each { |col|
    		puts "This is "+"#{col}".send(col)
    	}
    end


end