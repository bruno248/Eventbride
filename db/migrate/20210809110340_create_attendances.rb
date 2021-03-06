class CreateAttendances < ActiveRecord::Migration[6.1]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      t.references :participant, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
