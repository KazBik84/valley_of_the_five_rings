module ApplicationHelper
  # Returns base title or title with current page name
  def title_function(title = '')
    if title.empty?
      return 'Dolina Pięciu Kręgów'
    else
      return "Dolina Pięciu Kręgów | #{title}"
    end
  end

  # Checks if nav bar item is active
  def active_check(nav_name, name)
    nav_name == name ? 'active' : nil
  end

def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-error", alert: "alert-warning",
     notice: "alert-info" }[flash_type.to_sym] || flash_type.to_s
end

  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end  
end
