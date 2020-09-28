class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
      t.string :name
      t.integer :age
      t.string :mobile
      t.string :city
      t.string :faculty

      t.timestamps
    end
  end
end
