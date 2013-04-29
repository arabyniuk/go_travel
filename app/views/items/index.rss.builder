xml.instruct! :xml, version: "1.0"
xml.rss version: "2.0" do 
	xml.channel do
		xml.title "Our articles"
		xml.body "Latest articles, come and get them!"
		xml.link items_url
	
	
	@items.each do |item|
		xml.item do
			xml.title item.title
			xml.pubDate item.created_at.to_s(:rfc822)
			xml.description item.body
		end
	end
	end
end