crumb :root do
  link 'Home', root_path
end

# Announcements -----------------------------------
crumb :add_announcement do
  link 'Dodaj Post', new_announcement_path
  parent :root
end

crumb :edit_announcement do
  link 'Edytuj Post', edit_announcement_path
  parent :root
end

crumb :announcement do |announcement|
  link announcement.title, announcement_path(announcement)
  parent :root
end

# Legendopedia ---------------------------------------------

crumb :legendopedia_main do
  link 'Legendopedia', legendopedia_main_path
  parent :root
end

# Static Pages ------------------------------------------

crumb :web_scrolls do
  link 'Zwoje z Sieci', web_scrolls_path
  parent :root
end

# User ----------------------------------------------------

crumb :user_page do
  link 'Twój Dział', current_user
end

# Characters ----------------------------------------------

crumb :add_character do
  link 'Dodaj Postać', new_user_character_path
  parent :user_page
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).