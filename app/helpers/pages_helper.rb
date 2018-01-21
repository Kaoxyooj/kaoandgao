module PagesHelper

  def set_title title = params[:id]
    @title = capture do
      title.titleize
    end
  end
  
end
