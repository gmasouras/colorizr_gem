class String

	def self.create_colors
		my_colors = {red: 31, green: 32, yellow: 33, blue: 34, pink: "38;5;218", light_blue: 94, white: 97, light_grey: 37, black: 30}
		my_colors.each {|key, value|
			send(:define_method, "#{key}") {
				"\e[#{value}m#{self}\e[0m"
			}
		}
	end

    def self.colors
    	create_colors.map {|key, value| key}
    end


    def self.sample_colors
    	create_colors
    	print_colors
    end

    private 

    def self.print_colors
    	my_colors = colors.map {|color| color.to_s}
    	my_colors.each { |col|
    		puts "This is "+"#{col}".send(col)
    	}
    end


end