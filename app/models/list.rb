class List < ApplicationRecord
  scope :am_profile_with_ok,   -> { where(updated_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, submit_status: "ok", meridies: "AM") }
  scope :pm_profile_with_ok,   -> { where(updated_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day, submit_status: "ok", meridies: "PM") }
  scope :today_failed_profile, -> { where('submit_status != ?', 'ok').where(updated_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day) }
end
