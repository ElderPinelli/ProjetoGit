libs = [
	File.expand_path('../../lib', __FILE__),
	File.expand_path('../../app', __FILE__)
]

$LOAD_PATH.unshift *Dir.glob(libs)

require "princess"

@characters = [Knight.new(:name=>"Cris Tiro Certo"), Knight.new(:name=>"Ryu")]
