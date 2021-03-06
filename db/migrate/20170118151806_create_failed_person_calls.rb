class CreateFailedPersonCalls < ActiveRecord::Migration
  def change
    create_table :failed_person_calls do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :document_number
      t.string :document_type
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
