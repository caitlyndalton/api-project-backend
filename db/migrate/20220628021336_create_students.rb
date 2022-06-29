class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.text :short_bio
      t.string :LinkedIn_URL
      t.string :twitter_handle
      t.string :personal_blog
      t.string :online_resume_url
      t.string :github_url
      t.string :photo

      t.timestamps
    end
  end
end
