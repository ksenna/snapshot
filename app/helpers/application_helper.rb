module ApplicationHelper

	def full_title(page_title)
  	base_title = "SnapShot"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

	def formatted_date(date)
		date.strftime("%B %-d, %Y")
	end
end
