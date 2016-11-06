module ProjectsHelper
	def website_format(url)
		if url[0..6] == "http://" or url[0..6] == "https:/"
			return url
		else
			return "http://" + url
		end
	end

	def truncate140(string)
		if string.length > 140
			return string[0, 140] + "..."
		else
			return string
		end
	end
end
