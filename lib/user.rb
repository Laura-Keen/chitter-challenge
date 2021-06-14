require 'pg'

class User
  def self.create(email:, password:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end

    connection.exec("INSERT INTO users (email) VALUES('#{email}');")
    connection.exec("INSERT INTO users (email) VALUES('#{password}');")
  end
end
