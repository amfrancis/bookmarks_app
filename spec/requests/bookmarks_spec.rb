require 'spec_helper'

describe "Bookmarks" do

    describe "View Bookmarks page" do
        it "should have the content 'View Bookmarks'" do
        visit bookmarks_path
        page.should have_content('View Bookmarks')
        end
    end

    describe "New Bookmark page" do
        it "should have the content 'New Bookmark'" do
            visit new_bookmark_path
            page.should have_content('New Bookmark')
        end

        it "should require a URL" do
            Bookmark.new(:url => "").should_not be_valid
        end

        it "should require a name" do
            Bookmark.new(:name => "").should_not be_valid
        end
    end

end

