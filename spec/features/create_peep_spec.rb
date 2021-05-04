feature 'Post a peep' do
  scenario 'User can post a peep to Chitter' do
    visit('/chitter/new')
    fill_in('message', with: 'My first peep!')
    click_button('Peep')

    expect(page).to have_content 'My first peep!'
  end
end
