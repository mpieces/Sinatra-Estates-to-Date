class ZipCodes
  include HTTParty

  base_uri "zipcodeapi.com/api"


  def get_distance(zip_code1, zip_code2)

    response = self.class.get("https://www.zipcodeapi.com/rest/qo7pNTi16Z3yOOK3t2cAZx0kamSqDg03F7tt1Mu7LxFzmqDPsPprmqLwMEXpVXtA/distance.json/#{zip_code1}/#{zip_code2}/mile")

    return response["distance"]
  end

end
