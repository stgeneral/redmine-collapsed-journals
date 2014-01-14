class IssueHistoryHookListener < Redmine::Hook::ViewListener
  render_on :view_issues_show_description_bottom, :partial => "collapsed_journals"

  def view_layouts_base_html_head(context)
    stylesheet_link_tag('collapsed_journals', :plugin => :collapsed_journals) +
    	javascript_include_tag('collapsed_journals', :plugin => :collapsed_journals)
  end
end
