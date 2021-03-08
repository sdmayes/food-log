require "test_helper"

class EnrtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @enrty = enrties(:one)
  end

  test "should get index" do
    get enrties_url
    assert_response :success
  end

  test "should get new" do
    get new_enrty_url
    assert_response :success
  end

  test "should create enrty" do
    assert_difference('Enrty.count') do
      post enrties_url, params: { enrty: { calories: @enrty.calories, carbs: @enrty.carbs, fats: @enrty.fats, meal_type: @enrty.meal_type } }
    end

    assert_redirected_to enrty_url(Enrty.last)
  end

  test "should show enrty" do
    get enrty_url(@enrty)
    assert_response :success
  end

  test "should get edit" do
    get edit_enrty_url(@enrty)
    assert_response :success
  end

  test "should update enrty" do
    patch enrty_url(@enrty), params: { enrty: { calories: @enrty.calories, carbs: @enrty.carbs, fats: @enrty.fats, meal_type: @enrty.meal_type } }
    assert_redirected_to enrty_url(@enrty)
  end

  test "should destroy enrty" do
    assert_difference('Enrty.count', -1) do
      delete enrty_url(@enrty)
    end

    assert_redirected_to enrties_url
  end
end
