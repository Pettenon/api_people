class Importer

	attr_accessor :big_array
	attr_accessor :big_hash
	attr_accessor :z

	def api_key
		"h7dprv5v3gy8frww649v56gy"
	end

	
	def url
		"http://api.crunchbase.com/v/1/people.js?api_key=#{api_key}"		
	end
	
	def search
		answer = RestClient.get url
    	self.big_array = JSON.parse(answer)
	end


	def permalinks_json
		resposta = RestClient.get teste(z)
		self.big_hash = JSON.parse(resposta)
	end

	def import_info
		(0..49).each do |o|
		    permalink = big_array[o]["permalink"]
			
			z = "http://api.crunchbase.com/v/1/person/#{permalink}.js?api_key=#{api_key}"	
			puts z

			
			c = Person.find_by_permalink(permalink)
		    if c == nil

			    i = Person.new
			    i.permalink = permalink
			    i.save
			end	


			resposta = RestClient.get z
			self.big_hash = JSON.parse(resposta)

				tag_list = big_hash["tag_list"]
				twitter_username = big_hash["twitter_username"]
				birthplace = big_hash["birthplace"]
				born_year = big_hash["born_year"]
				born_month = big_hash["born_month"]
				born_day = big_hash["born_day"]


				
				if tag_list == nil && twitter_username == nil && birthplace == nil && born_year == nil && born_month == nil && born_day == nil
					else
						y = Info.new
						y.tag_list = tag_list
						y.twitter_username = twitter_username
						y.birthplace = birthplace
						y.born_year = born_year
						y.born_month = born_month
						y.born_day = born_day
						y.save
					end
			end
		end


	def import_people
		(0..100).each do |p|
			first_name = big_array[p]["first_name"]
			last_name = big_array[p]["last_name"]
		    permalink = big_array[p]["permalink"]

		    c = Person.find_by_permalink(permalink)
		    if c == nil

			    i = Person.new
			    i.first_name = first_name
			    i.last_name = last_name
			    i.permalink = permalink
			    i.save


			    
			end
		end
	end
end