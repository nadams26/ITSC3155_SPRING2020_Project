require 'rails_helper.rb'

feature "Blogger edits an article" do
    
scenario "Blogger successfully edits a pre-existing article" do
       
        visit welcome_index_path
        click_link "Sign Up"
        fill_in "Name", with: "Nathan Adams"
        fill_in "Email", with: "nadams26@uncc.edu"
        fill_in "Password", with: "password"
        fill_in "Password confirmation", with: "password"
        click_button "Create User"
        visit welcome_index_path
        click_link "Log In"
        fill_in "Email", with: "nadams26@uncc.edu"
        fill_in "Password", with: "password"
        click_button "Login"
       
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
    
        click_link "Article List"
        click_link "Edit"
        expect(page).to have_content("Edit article")
        fill_in "Title", with: "Testing edit title"
        fill_in "Text", with: "Testing edit text with rspec"
        click_button "Update Article"
        expect(page).to have_content("Testing edit title")
        expect(page).to have_content("Testing edit text with rspec")
    end
end