module ApplicationHelper

  # 根据所在页面返回完整的标题
  def full_title(page_title = '')
    base_title = 'Ruby On Rails Tutorail Sample App'
    if page_title.empty?
      base_title
    else
      page_title + '|' + base_title
    end
  end

end
