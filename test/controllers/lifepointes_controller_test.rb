require 'test_helper'

class LifepointesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifepointe = lifepointes(:one)
  end

  test "should get index" do
    get lifepointes_url
    assert_response :success
  end

  test "should get new" do
    get new_lifepointe_url
    assert_response :success
  end

  test "should create lifepointe" do
    assert_difference('Lifepointe.count') do
      post lifepointes_url, params: { lifepointe: { email: @lifepointe.email, fname: @lifepointe.fname, lname: @lifepointe.lname, phone: @lifepointe.phone } }
    end

    assert_redirected_to lifepointe_url(Lifepointe.last)
  end

  test "should show lifepointe" do
    get lifepointe_url(@lifepointe)
    assert_response :success
  end

  test "should get edit" do
    get edit_lifepointe_url(@lifepointe)
    assert_response :success
  end

  test "should update lifepointe" do
    patch lifepointe_url(@lifepointe), params: { lifepointe: { email: @lifepointe.email, fname: @lifepointe.fname, lname: @lifepointe.lname, phone: @lifepointe.phone } }
    assert_redirected_to lifepointe_url(@lifepointe)
  end

  test "should destroy lifepointe" do
    assert_difference('Lifepointe.count', -1) do
      delete lifepointe_url(@lifepointe)
    end

    assert_redirected_to lifepointes_url
  end
end
