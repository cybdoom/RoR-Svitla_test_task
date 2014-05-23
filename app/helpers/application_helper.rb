module ApplicationHelper
  def bootstrap_alerts
    if notice
      render_success notice
    elsif alert
      render_error alert
    elsif flash[:warning]
      render_warning flash[:warning]
    end
  end

  def render_success content
    return if content.blank?
    content_tag(:div, content, class: 'alert alert-success')
  end

  def render_error content
    return if content.blank?
    content_tag(:div, content, class: 'alert alert-danger')
  end
end
