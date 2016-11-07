module ProjectsHelper
	def website_format(url)
		if url[0..6] == "http://" or url[0..6] == "https:/"
			return url
		else
			return "http://" + url
		end
	end

	def truncate140(string)
		if string.length > 153
			return string[0, 150] + "..."
		else
			return string
		end
	end
end
