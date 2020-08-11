module ApplicationHelper
    
  def full_title(page_title = '')
    base_title = "明治大学アナウンス研究会"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def sort_link(column_name, column, **additional_params)
    if params[:column] != column.to_s || params[:direction].nil?
      link_to column_name, { column: column, direction: :asc, **additional_params }
    elsif params[:column] == column.to_s && params[:direction] == 'asc'
      link_to "#{column_name} ▲", { column: column, direction: :desc, **additional_params }
    elsif params[:column] == column.to_s && params[:direction] == 'desc'
      link_to "#{column_name} ▼", { column: column, direction: :asc, **additional_params }
    end
  end
    
end
