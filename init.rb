unless File.basename(File.dirname(__FILE__)) == 'collapsed_journals'
  raise "Collapsed Journals plugin directory should be 'collapsed_journals' instead of '#{File.basename(File.dirname(__FILE__))}'"
end

Redmine::Plugin.register :collapsed_journals do
  name 'Collapsed Journals Plugin'
  author 'Dmitry Babenko'
  description "Hide the journal details that don't have a note associated by default and add a link to show all details."
  version '0.0.2'
  url 'https://github.com/stgeneral/redmine-collapsed-journals'
  requires_redmine :version_or_higher => '2.2.0'
end

require_dependency 'issue_history_hook_listener'
