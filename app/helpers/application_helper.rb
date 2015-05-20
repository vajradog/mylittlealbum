module ApplicationHelper

  def fix_date(t)
    t.strftime("%A, %B %d, %Y")
  end
  
end
