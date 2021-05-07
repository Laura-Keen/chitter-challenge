require 'pg'

feature 'View peeps' do
  scenario 'A user can view peeps' do
    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps(message) VALUES('My first peep!');")

    visit('/peeps')

    expect(page).to have_content "My first peep!"
  end
end
