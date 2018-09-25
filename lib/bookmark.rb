require 'pg'
class Bookmark

def self.all
  conn = PG.connect dbname: 'bookmark_manager' , user: 'alexandradresco'
  rs = conn.exec ('SELECT * FROM bookmark')
  rs.map { |bookmark| bookmark['url']}
end

end
