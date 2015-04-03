require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { auto_login_token: @user.auto_login_token, birthday: @user.birthday, current_bmi: @user.current_bmi, current_weight: @user.current_weight, email: @user.email, gender: @user.gender, height: @user.height, initial_bmi: @user.initial_bmi, initial_weight: @user.initial_weight, loss_rate: @user.loss_rate, name: @user.name, occupation: @user.occupation, password_digest: @user.password_digest, pro_edition: @user.pro_edition, purpose: @user.purpose, target_disease: @user.target_disease, target_weight: @user.target_weight, ticket_count: @user.ticket_count }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { auto_login_token: @user.auto_login_token, birthday: @user.birthday, current_bmi: @user.current_bmi, current_weight: @user.current_weight, email: @user.email, gender: @user.gender, height: @user.height, initial_bmi: @user.initial_bmi, initial_weight: @user.initial_weight, loss_rate: @user.loss_rate, name: @user.name, occupation: @user.occupation, password_digest: @user.password_digest, pro_edition: @user.pro_edition, purpose: @user.purpose, target_disease: @user.target_disease, target_weight: @user.target_weight, ticket_count: @user.ticket_count }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
