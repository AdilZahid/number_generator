class CreateProfileJobStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_job_statuses do |t|
      t.datetime :my_job_status
      t.timestamps
    end
  end
end
