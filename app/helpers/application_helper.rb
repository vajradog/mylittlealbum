module ApplicationHelper

  def fix_date(t)
    t.strftime("%A, %B %d, %Y")
  end

  def flash_class(level)
    case level
    when :notice then "alert-box success"
    when :error then "alert-box alert"
    end
  end
  
end
