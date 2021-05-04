feature 'View homepage' do 
  scenario 'User visits the homepage' do
    visit('/')
    expect(page).to have_content "Welcome To Chitter"
  end
end