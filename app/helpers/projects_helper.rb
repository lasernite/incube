module ProjectsHelper
	def website_format(url)
		if url[0..6] == "http://" or "https:/"
			return url
		else
			return "http://" + url
		end
	end
end
