module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Built in Toronto"
    if page_title.empty?
      base_title
    else
      page_title + ' | ' + base_title
    end
  end

  def render_svg(name, styles: "fill-current text-gray-500", title: nil)
    filename = "#{name.svg}"
    title ||= name.underscore.humanize
    inline_svg_tag(filename, aria: true, nocomment: true, title: title, class: styles)
  end
    
end
