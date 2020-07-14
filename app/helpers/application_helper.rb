module ApplicationHelper
    
  def full_title(page_title = '')
    base_title = "明治大学アナウンス研究会"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
    
end
