class ImageHandler
  #   def initialize(query, results_count)
  #     @query = query
  #     @results = results_count
  #   end
  #
  #   def get_images
  #     params =
  #     params = @default_params.merge(params)
  #     params["q"] = rand(1000).to_s if params["q"].nil?
  #
  #     url = "http://ajax.googleapis.com/ajax/services/search/images?" + params.to_query
  #
  #     resp = Net::HTTP.get_response(URI.parse(url))
  #     result = JSON.parse(resp.body)
  #     return nil if result.nil?
  #
  #     response_data = result["responseData"]
  #     return nil if response_data.nil?
  #
  #     result_size = response_data["results"].count
  #     return nil unless result_size > 0
  #     result["responseData"]["results"][rand(result_size)]["url"]
  #   end
  #
  #   def get_image_content(params = {})
  #     Net::HTTP.get_response(URI.parse(get_image_url(params))).body
  #   end
  #
  #   def get_image_file(params = {})
  #     open(URI.parse(get_image_url(params)))
  #   end
  #
  # end

end
