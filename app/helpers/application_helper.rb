module ApplicationHelper

	def flash_class(level)
		case level
		when 'notice' then "alert alert-info alert-dismissible fade show "
		when 'success' then "alert alert-success alert-dismissible fade show"
		when 'error' then "alert alert-danger alert-dismissible fade show"
		when 'alert' then "alert alert-warning alert-dismissible fade show"
		end
	end

		# Default user avatar
	def item_picture(item_id)
		item = Item.find(item_id)
		if item.picture.attached?
			image_tag item.picture, class: 'mr-3 rounded W35',  style: "width: 50px; height: auto;"
		end
	end
end
