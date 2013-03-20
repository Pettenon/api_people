class Importer

	attr_accessor :big_array
	attr_accessor :big_hash

	def api_key
		"h7dprv5v3gy8frww649v56gy"
	end

	def url(term)
		"http://api.crunchbase.com/v/1/people.js?api_key=#{api_key}"		
	end

	def domain(permalink)
		"http://api.crunchbase.com/v/1/person/#{permalink}.js?api_key=#{api_key}"
	end

	def search(term)
		answer = RestClient.get url(term)
    	self.big_array = JSON.parse(answer)
	end

	def busca(permalink)
		#permalink = Person.all(params[:permalink])
		resposta = RestClient.get domain(permalink)
		self.big_hash = JSON.parse(resposta)
	end

	def import_peoples
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

	def import_info
		(0..4).each do |q|
			tag_list = big_hash["tag_list"]
			twitter_username = big_hash["twitter_username"]

			#x = Info.find_by_permalink(permalink)
			#if x == nil

				y = Info.new
				y.tag_list = tag_list
				y.twitter_username = twitter_username
				y.save
			#end
		end
	end
end