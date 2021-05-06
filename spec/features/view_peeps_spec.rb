feature 'View peeps' do
  scenario 'A user can view peeps' do
    visit('/peeps')

    expect(page).to have_content "My first peep!"
  end
end
