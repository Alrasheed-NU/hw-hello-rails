=begin class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.timestamps
    end
  end
end
=end

# fix: I needed to add [8:0] to make it work

class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end
end