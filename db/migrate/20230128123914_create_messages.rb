class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string  :content
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      # https://master.tech-camp.in/v2/curriculums/4858
      t.timestamps
    end
  end
end
