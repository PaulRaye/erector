dir = File.dirname(__FILE__)
require "#{dir}/page"
require "#{dir}/sidebar"

require "rubygems"
require "bundler"
Bundler.setup
require 'rdoc/markup'
require 'rdoc/markup/to_html'

class Index < Page
  def initialize
    super(:page_title => "Home")
  end

  def render_body

    

    p do
      text "Don't forget to read the "
      a "User Guide", :href => "userguide.html"
      text " and "
      a "FAQ", :href => "faq.html"
      text " and "
      a "API", :href => "rdoc"
    end
  end
end

