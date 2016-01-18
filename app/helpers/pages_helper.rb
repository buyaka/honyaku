module PagesHelper

  def prePage(page_id)
    page = Page.where(" pagenumber < #{page_id} ").order("pagenumber desc").first
    if page != nil
      return link_to("<<前へ", translate_path(@book, page))
    end
    return ""
  end

  def nextPage(page_id)
    page = Page.where(" pagenumber > #{page_id} ").order("pagenumber asc").first
    if page != nil
      return link_to("次へ>>", translate_path(@book, page))
    end
    return ""
  end

end
