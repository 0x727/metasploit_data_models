class CreateModuleResults < ActiveRecord::Migration[4.2]
    def change
      create_table :module_results do |t|
        t.integer :session_id
        t.string :fullname
        t.string :track_uuid
        t.binary  :output
        t.timestamp :created_at
      end

      add_index :module_results, :session_id
      add_index :module_results, :track_uuid
    end
  end
  