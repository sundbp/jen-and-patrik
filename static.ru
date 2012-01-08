require 'rubygems'
require "rack/contrib/try_static"

use Rack::TryStatic, :root => "build", :urls => %w[/], :try => ['.html', 'index.html', '/index.html']

# 404
run lambda { [404, {'Content-Type' => 'text/plain'}, [' File not found.']]}
