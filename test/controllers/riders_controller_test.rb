require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rider = riders(:one)
  end

  test "should get index" do
    get riders_url, as: :json
    assert_response :success
  end

  test "should create rider" do
    assert_difference('Rider.count') do
      post riders_url, params: { rider: { city_origin: @rider.city_origin, first_name: @rider.first_name, last_name: @rider.last_name, latitude: @rider.latitude, longitude: @rider.longitude, state_origin: @rider.state_origin } }, as: :json
    end

    assert_response 201
  end

  test "should show rider" do
    get rider_url(@rider), as: :json
    assert_response :success
  end

  test "should update rider" do
    patch rider_url(@rider), params: { rider: { city_origin: @rider.city_origin, first_name: @rider.first_name, last_name: @rider.last_name, latitude: @rider.latitude, longitude: @rider.longitude, state_origin: @rider.state_origin } }, as: :json
    assert_response 200
  end

  test "should destroy rider" do
    assert_difference('Rider.count', -1) do
      delete rider_url(@rider), as: :json
    end

    assert_response 204
  end
end
