class CreateEnquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :enquiries do |t|

      t.timestamps
    end
  end
end
