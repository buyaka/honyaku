module PagesHelper

  def prePage(page_id)
    page = Page.where(" id < #{page_id} ").first
    if page == nil
      return
    end
    return link_to("<", translate_path(page.book, page))
  end

  def nextPage(page_id)
    page = Page.where(" id > #{page_id} ").first
    if page == nil
      return
    end
    return link_to(">", translate_path(:book_id => page.book.id, :id => page.id))
  end

end
