require 'peep'

describe Peep do

  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')
      
      expect(Peep.all.length).to eq 0
      connection.exec("INSERT INTO peeps (message) VALUES ('My first peep!');")
      connection.exec("INSERT INTO peeps (message) VALUES ('My second peep!');")

      peeps = Peep.all
      
      expect(peeps[0]['message']).to eq 'My first peep!'
      expect(peeps[1]['message']).to eq 'My second peep!'
    end
  end

  describe '.create' do 
    it 'creates a new peep' do
      Peep.create(message: 'Hey Chitter :)')

      peeps = Peep.all
      
      expect(peeps[0]['message']).to eq 'Hey Chitter :)'
    end
  end
 end