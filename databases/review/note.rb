require 'sqlite3'
require 'faker'


# create SQLite3 database
db = SQLite3::Database.new("note.db")
# db.results_as_hash = true


class Note
	attr_reader :db

	def initialize(database)

		@db = database
	end


	def create_table(tb_name)

		table_name = tb_name
		create_table_cmd = <<-SQL
		  CREATE TABLE IF NOT EXISTS #{table_name}(
		    id INTEGER PRIMARY KEY,
		    note_data VARCHAR(255)
		  )
		  SQL
		@db.execute(create_table_cmd)

	end

	def read_table(tb_name)

		table_name = tb_name
		read_table_cmd = <<-SQL
		Select * from #{table_name}
		SQL
		p @db.execute(read_table_cmd)

	end

	def read_record(tb_name,note_id)

		table_name = tb_name
		read_record_cmd = <<-SQL
		Select * from #{table_name}
		where id= (?)
		SQL
		p @db.execute(read_record_cmd, note_id)

	end

	def add_record(tb_name,record)

		table_name=tb_name
		add_record_cmd = <<-SQL
		INSERT INTO #{table_name}
		(note_data) values (?)
		SQL
		@db.execute(add_record_cmd, record)

	end

	def delete_record(tb_name, note_id)
		table_name = tb_name
		delete_record_cmd = <<-SQL
		DELETE FROM #{table_name}
		WHERE id=?
		SQL
		@db.execute(delete_record_cmd, note_id)

	end

	def edit_record(tb_name, note_id, record)
		table_name = tb_name
		edit_record_cmd = <<-SQL
		UPDATE #{table_name}
		SET note_data = (?)
		WHERE id =? 
		SQL
		@db.execute(edit_record_cmd, record , note_id)
	end


end

note = Note.new(db)

note.create_table("To_Do")
note.add_record("To_Do", "To buy grocery")
note.add_record("To_Do", "Cleaning duty")
note.add_record("To_Do", "Laundry")
note.edit_record("To_Do", 2 , "Prepear turkey")
note.delete_record("To_Do", 3)
note.read_record("To_Do", 8)
note.read_table("To_Do")