require File.dirname(__FILE__) + '/../test_helper'

class ProductRecommendationsControllerTest < ActionController::TestCase
  tests ProductRecommendationsController

  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:product_recommendations)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_product_recommendation
    assert_difference('ProductRecommendation.count') do
      post :create, :product_recommendation => { }
    end

    assert_redirected_to product_recommendation_path(assigns(:product_recommendation))
  end

  def test_should_show_product_recommendation
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_product_recommendation
    put :update, :id => 1, :product_recommendation => { }
    assert_redirected_to product_recommendation_path(assigns(:product_recommendation))
  end

  def test_should_destroy_product_recommendation
    assert_difference('ProductRecommendation.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to product_recommendations_path
  end
end
