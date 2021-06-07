feature 'Delete a peep' do
  scenario 'User can delete a bookmark' do
    Peep.create(message: "Hello")
    visit('/peeps')
    expect(page).to have_content('Hello')

    first('.peep').click_button 'Delete'

    expect(current_path).to eq '/peeps'
    expect(page).not_to have_content('Hello')
  end
end
