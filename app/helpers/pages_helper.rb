module PagesHelper

  def prePage(page_id)
    page = Page.where(" id < #{page_id} ").first
    if page != nil
      return link_to("<<前へ", translate_path(@book, page))
    end
    return ""
  end

  def nextPage(page_id)
    page = Page.where(" id > #{page_id} ").first
    if page != nil
      return link_to("次へ>>", translate_path(@book, page))
    end
    return ""
  end

end
