unless File.basename(File.dirname(__FILE__)) == 'collapsed_journals'
  raise "Collapsed Journals plugin directory should be 'collapsed_journals' instead of '#{File.basename(File.dirname(__FILE__))}'"
end

Redmine::Plugin.register :collapsed_journals do
  name 'Collapsed Journals Plugin'
  author 'Dmitry Babenko'
  description 'Collapses issue history items without an assosiated note'
  version '0.0.3'
  url 'https://github.com/stgeneral/redmine-collapsed-journals'
  author_url 'https://github.com/stgeneral'
  requires_redmine :version_or_higher => '2.2.0'
end

require_dependency 'issue_history_hook_listener'
