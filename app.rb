require './environment'

Cuba.plugin(Cuba::Render)

Cuba.settings[:render][:template_engine] = 'haml'

Cuba.define do
  on get do
    on 'ohai' do
      res.write partial('readme')
    end

    on root do
      res.redirect '/ohai'
    end
  end
end
