class ItemsMailer < ActionMailer::Base
  default from: "travel@items.com"

  def item_created(item)
  	@item = item
  	mail subject: "A new item was created!", to: "magnon@ukr.net"
  end
end
