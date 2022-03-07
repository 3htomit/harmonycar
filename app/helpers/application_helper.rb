module ApplicationHelper

  def nav_active?(controllers)
    controllers.include?(controller_name) ? 'col active' : 'col inactive'
  end

end
