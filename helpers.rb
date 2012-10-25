require 'date'
require 'rdiscount'

module FrankHelpers
  def get_post_sumaries
    summaries = []

    Dir[File.join(Dir.pwd, 'dynamic/words/*')].each do |d|
      post = File.read(d)
      begin
      summaries << {
        :id => post.match(/^id:\s(\d+)$/)[1],
        :permalink => d.match(/(\/words\/[\w-]+)/)[1],
        :title => post.match(/^title:\s([^\n]+)$/)[1],
        :date => post.match(/^date:\s([^\n]+)$/)[1].gsub('/', ''),
        :summary => RDiscount.new(post.match(/^##\s+[^\n]+\n\n([^\n]+)$/)[1]).to_html
      }
      rescue => e
        puts e.message
        puts e.backtrace.join("\n")
      end
    end

    summaries.sort {|x, y| y[:id] <=> x[:id] }
  end

end