require "susy"
http_path = "/"
css_dir = "stylesheets"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "js"

output_style = :compact
relative_assets = true
line_comments = false

preferred_syntax = :sass

sass_options = {:debug_info=>false} # Ajuda na hora de debugar (Desativar quando output_style = :compressed)
# output_style = :compressed
output_style = :expanded

module Sass::Script::Functions
	def random(max = Sass::Script::Number.new(2000))
		Sass::Script::Number.new(rand(max.value), max.numerator_units, max.denominator_units)
	end
end