module ApplicationHelper
  def devise_flash_to_bootstrap(type)
    case type.to_sym
    when :alert
      :danger
    when :notice
      :success
    else
      :info
    end
  end
end
