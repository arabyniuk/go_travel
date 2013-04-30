atom_feed do |feed|
	feed.title "Superhero Articles"	
	@items.each do |item|
		feed.entry item do |entry|
			entry.title item.title
			entry.content item.body
		end
	end

end