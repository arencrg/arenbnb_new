require 'test_helper'

class BnbroomsControllerTest < ActionController::TestCase
  setup do
    @bnbroom = bnbrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bnbrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bnbroom" do
    assert_difference('Bnbroom.count') do
      post :create, bnbroom: { acavail: @bnbroom.acavail, bathroomcount: @bnbroom.bathroomcount, bedcount: @bnbroom.bedcount, bedroomcount: @bnbroom.bedroomcount, country: @bnbroom.country, deskavail: @bnbroom.deskavail, essentialsavail: @bnbroom.essentialsavail, famfriendly: @bnbroom.famfriendly, heatingavail: @bnbroom.heatingavail, kitchenvail: @bnbroom.kitchenvail, neighborhood: @bnbroom.neighborhood, parkingavail: @bnbroom.parkingavail, room_details: @bnbroom.room_details, room_name: @bnbroom.room_name, room_price: @bnbroom.room_price, room_type: @bnbroom.room_type, selfcheckin: @bnbroom.selfcheckin, tvavail: @bnbroom.tvavail, wifiavail: @bnbroom.wifiavail }
    end

    assert_redirected_to bnbroom_path(assigns(:bnbroom))
  end

  test "should show bnbroom" do
    get :show, id: @bnbroom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bnbroom
    assert_response :success
  end

  test "should update bnbroom" do
    patch :update, id: @bnbroom, bnbroom: { acavail: @bnbroom.acavail, bathroomcount: @bnbroom.bathroomcount, bedcount: @bnbroom.bedcount, bedroomcount: @bnbroom.bedroomcount, country: @bnbroom.country, deskavail: @bnbroom.deskavail, essentialsavail: @bnbroom.essentialsavail, famfriendly: @bnbroom.famfriendly, heatingavail: @bnbroom.heatingavail, kitchenvail: @bnbroom.kitchenvail, neighborhood: @bnbroom.neighborhood, parkingavail: @bnbroom.parkingavail, room_details: @bnbroom.room_details, room_name: @bnbroom.room_name, room_price: @bnbroom.room_price, room_type: @bnbroom.room_type, selfcheckin: @bnbroom.selfcheckin, tvavail: @bnbroom.tvavail, wifiavail: @bnbroom.wifiavail }
    assert_redirected_to bnbroom_path(assigns(:bnbroom))
  end

  test "should destroy bnbroom" do
    assert_difference('Bnbroom.count', -1) do
      delete :destroy, id: @bnbroom
    end

    assert_redirected_to bnbrooms_path
  end
end
