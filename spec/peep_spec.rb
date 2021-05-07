require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')

      connection.exec("INSERT INTO peeps (message) VALUES ('My first peep!');")

      peeps = Peep.all
      
      expect(peeps).to include("My first peep!")
    end
  end

  describe '.create' do 
    it 'creates a new peep' do
      Peep.create(message: 'Hey Chitter :)')

      expect(Peep.all).to include("Hey Chitter :)")
    end
  end
end