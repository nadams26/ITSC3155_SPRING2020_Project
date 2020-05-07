require 'rails_helper.rb'

feature "Blogger  deletes comments on an article" do
    
scenario "Blogger successfully deleted comments on an article" do
       

        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "Blogger successfully creates a new article" do
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
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybara Article"
        fill_in "Text", with: "This is a new Capybara article"
        click_button "Create Article"
        expect(page).to have_content("New Capybara Article")
        expect(page).to have_content("This is a new Capybara article")
        
        fill_in "Commenter", with: "New Capybara comment"
        fill_in "Body", with: "This is a new Capybara comment, I am using this to test my ability to create a comment"
        click_button "Create Comment"
        expect(page).to have_content("New Capybara comment")
        expect(page).to have_content("This is a new Capybara comment, I am using this to test my ability to create a comment")
        click_link "Destroy Comment"
    end
end