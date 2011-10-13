require 'test_helper'

class PostTest < ActiveSupport::TestCase
   fixtures  :tenants, :users, :authors, :posts, :calendars, :zines, :team_assets
   
   def setup()
     reset_tenant
   end
  
   test "should get all posts within mangoland" do
     set_tenant( tenants(:mangoland) )
     assert_equal 4, Post.count
   end
  
   test "should get only nigel posts in mangoland" do
     set_tenant( tenants(:mangoland) )
     assert_equal 1, authors(:nigel).posts.size
   end

  test "should not get any jermaine posts in mangoland" do
     set_tenant( tenants(:mangoland) )
     assert   authors(:jermaine).posts.size.zero?
  end


end  # class test
