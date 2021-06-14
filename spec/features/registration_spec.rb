feature 'registration' do
  scenario 'a user can sign up to Chitter' do
    visit '/users/new'
    fill_in('email', with: 'test@example.com')
    fill_in('password', with: 'password123')
    click_button('Sign Up')

    expect(page).to have_content "Welcome To Chitter"
  end
end