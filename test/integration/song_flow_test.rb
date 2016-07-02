require 'test_helper'

class SongFlowTest < ActionDispatch::IntegrationTest
  setup do
    @song = songs(:one)
  end

  test "can delete song via ajax" do
    get "/songs"

    delete "/songs/#{@song.id}", format: 'js'
    assert_equal 200, status
  end
end
