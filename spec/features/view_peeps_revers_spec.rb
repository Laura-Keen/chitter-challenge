feature 'Peeps are in reverse chronological order' do 
  scenario 'User can see peeps in reverse chronological order' do
    visit('/peeps/new')
    fill_in('message', with: 'My first peep!')
    click_button('Peep')

    visit('/peeps/new')
    fill_in('message', with: 'My second peep!')
    click_button('Peep')

    expect(first('.peep')).to have_content('My second peep!')
  end
end
