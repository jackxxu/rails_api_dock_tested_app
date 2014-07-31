require 'test_helper'

class ApplicationTest < Minitest::Test
  include DockTest::Methods

  def test_text_get_response
    get '/api/text/sample_txt'
    assert_equal last_response['content-type'], "text/plain; charset=utf-8"
    assert_response_status 200
    assert_response_body 'sample_txt'
  end

  def test_json_get_response
    get '/api/json/sample_txt'
    assert_equal last_response['content-type'], "application/json; charset=utf-8"
    assert_response_status 200
    assert_response_json_schema 'test/functional/schemas/simple.schema.json'
  end

  def test_json_post_response
    post '/api/json/sample_txt'
    assert_equal last_response['content-type'], "application/json; charset=utf-8"
    assert_response_status 201
    assert_response_json_schema 'test/functional/schemas/complex.schema.json'
  end

end
