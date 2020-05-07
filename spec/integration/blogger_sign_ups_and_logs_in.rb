require 'rails_helper.rb'

feature "Blogger sign up and logins in" do
    
scenario "Blogger successfully signups and creates an account" do
       
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
       
       
    end
end