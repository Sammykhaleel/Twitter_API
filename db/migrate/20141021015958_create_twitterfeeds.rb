class CreateTwitterfeeds < ActiveRecord::Migration
  def change
    create_table :twitterfeeds do |t|

      t.timestamps
    end
  end
end
