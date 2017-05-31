require 'rails_helper'


    feature "adding posts" do
    
    scenario "allow a user to add a post" do
      
        post = create(:post, title: "My other title", body: "My Body")
        visit post_path(post)


        expect(page).to have_content("My other title")
        expect(page).to have_content("My Body")

    end

end