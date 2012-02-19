class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.string :title
      t.string :sector
      t.string :languages
      t.string :length
      t.string :location
      t.string :job_type
      t.string :hours
      t.string :salary
      t.string :company_description
      t.string :internship

      t.timestamps
    end
  end
end
