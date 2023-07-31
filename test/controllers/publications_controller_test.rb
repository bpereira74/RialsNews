require "test_helper"

class PublicationsControllerTest < ActionDispatch::IntegrationTest

test "should create publication" do
assert_difference("Publication.count") do
      post publications_url, params: { publication: { image: @publication.image, title: @publication.title, description: @publicaction.description, user_id: @publication.user_id } }
end

test "should get edit" do
      sign_in users(:one)
      get edit_publication_url(@publication)
      assert_response :success
      end

assert_redirected_to publication_url(Publication.last)
end

test "should destroy publication" do
sign_in users(:one)
assert_difference("Publication.count", -1) do
delete post_url(@publication)
end

assert_redirected_to publications_url
end
end