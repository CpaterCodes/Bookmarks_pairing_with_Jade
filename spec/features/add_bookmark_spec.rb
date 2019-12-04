feature 'Add a bookmark' do
  scenario 'the user can add a bookmark and it is displayed on the page' do
    test_database_setup
    visit '/bookmark/add'
    fill_in 'new_bookmark', with: 'www.zetcode.com'
    click_button 'Add bookmark'
    expect(page).to have_content "www.zetcode.com"
  end
end
