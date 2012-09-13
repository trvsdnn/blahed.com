require 'rdiscount'

module FrankHelpers
  def get_post_sumaries
    summaries = []

    Dir[File.join(Dir.pwd, 'dynamic/words/**/index.md')].each do |d|
      post = File.read(d)
      begin
      summaries << {
        :id => post.match(/^id:\s(\d+)$/)[1],
        :permalink => d.match(/(\/words\/[\w-]+\/)/)[1],
        :title => post.match(/^title:\s([^\n]+)$/)[1],
        :summary => RDiscount.new(post.match(/^##\s+[^\n]+\n\n([^\n]+)$/)[1]).to_html
      }
      rescue
        puts post
      end
    end

    summaries.sort {|x, y| y[:id] <=> x[:id] }
  end

  def additional_script(path)
    if path =~ /^\/words/
      slug = path.match(/^\/words\/([\w-]+)\//)[1]
      "<script src='/js/#{slug}.js' type='text/javascript'></script>" if File.exist?("static/js/#{slug}.js")
    end
  end
end