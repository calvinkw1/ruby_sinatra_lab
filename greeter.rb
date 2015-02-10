class Greeter
	def greet
		"Hi I'm Frank!"
	end

	def quote(tag=nil)
		quotes = {
			:life => [
				"The best is yet to come.",
				"The best revenge is massive success."
			],
			:love => [
				"....A simple I love you means more than money....",
				"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
			]
		}
		# quote = quotes[tag.to_sym]
	  #if tag is inside of hash do this 
		if tag && quotes[tag.to_sym]
			[
		  	"<h2>Quotes matching tag: '#{tag}'</h2>",
		  	"<ul>"
		  	].concat(
		  		quotes[tag.to_sym].map do |quote|
		  			"<li><h3>#{quote}</h3></li>"
		  		end
		  	).push("</ul>")
		else 
			"Proper params not defined dude!"
		end
	end

end #end greeter class