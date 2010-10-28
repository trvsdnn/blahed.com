module FrankHelpers
  def get_post_sumaries
    summaries = []

    Dir[File.join(Dir.pwd, 'dynamic/words/**/index.md')].each do |d|
      post = File.read(d)

      summaries << {
        :id => post.match(/^id:\s(\d+)$/)[1],
        :permalink => d.match(/(\/words\/[\w-]+\/)/)[1],
        :title => post.match(/^title:\s([^\n]+)$/)[1],
        :summary => post.match(/^-+\n\n([^\n]+)$/)[1]
      }
    end

    summaries.sort {|x, y| x[:id] <=> y[:id] }
  end
end