Rails.application.config.to_prepare do
  TourBus::Announcement.table_name = "announcements"
end
