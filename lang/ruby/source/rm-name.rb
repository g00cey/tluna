def renameHeader
	targetfiles = Dir.glob"(一般コミック)*"
	targetfiles.each do |tf|
		File.rename(tf,tf.gsub("(一般コミック)",""))
	end
end

def fileTopBalnkCut
	targetfiles = Dir.glob"*"
	targetfiles.each do |tf|
		File.rename(tf, tf.strip)
	end
end

renameHeader
fileTopBalnkCut
