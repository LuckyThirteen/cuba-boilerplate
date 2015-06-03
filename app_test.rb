require 'cuba/test'
require './app'

scope do
  test 'Homepage' do
    get '/'
    follow_redirect!

    assert_equal 200, last_response.status
  end
end
