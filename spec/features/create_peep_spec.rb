feature 'Post a peep' do
  scenario 'User can post a peep to Chitter' do
    visit('/peeps/new')
    fill_in('message', with: 'Hey Chitter :)')
    click_button('Peep')

    expect(page).to have_content 'Hey Chitter :)'
  end
end