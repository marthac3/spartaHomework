class Video
	attr_accessor :id, :title, :des, :url, :img

	def self.open_connection
		PG.connect(dbname: "youtube_videos")
	end

	def self.hydrate video_data
		video = Video.new

		video.id = video_data['id']
		video.title = video_data['title']
		video.des = video_data['des']
		video.url = video_data['url']
		video.img = video_data['img']

		video
	end

	def self.all
		conn = self.open_connection
		sql = "SELECT * FROM video ORDER BY id;"
		results = conn.exec(sql)
		results.map { |result| self.hydrate (result) }
	end

	def self.find(id)
		conn = self.open_connection
		sql = "SELECT * FROM video WHERE id = #{id} LIMIT 1;"
		results = conn.exec(sql)
		self.hydrate (results[0])
	end

	def save
		conn = Video.open_connection
		if(!self.id)
			sql = "INSERT INTO video (title, des, url, img) VALUES ( '#{self.title}', '#{self.des}', '#{self.url}', '#{self.img}');"
		else
			sql = "UPDATE video SET title='#{self.title}', des='#{self.des}', url='#{self.url}', img='#{self.img}' WHERE id = #{self.id};"
		end
		conn.exec(sql)
	end

	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM video WHERE id = #{id};"
		conn.exec(sql)
	end
end