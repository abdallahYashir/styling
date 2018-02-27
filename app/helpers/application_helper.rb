module ApplicationHelper

  def bootstrap_class_for flash_type
    debug flash_type
    case flash_type
    when :success
      "alert-success"
    when :error
      "alert-error"
    when :alert
      "alert-block"
    when :notice
      "alert-info"
    else
      flash_type.to_s
    end
  end

  def require_admin
    if current_user.nil?
      redirect_to root_path
    elsif !current_user.nil? && !current_user.admin
      redirect_to root_path
    end
  end

  def register_user_edit
    !current_user.nil?
  end

end
