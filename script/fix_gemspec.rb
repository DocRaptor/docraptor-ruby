bad_authors = %q{s.authors     = ["[Elijah Miller, Matthew Gordon]"]}
bad_emails  = %q{s.email       = ["[elijah@expectedbehavior.com, matt@expectedbehavior.com]"]}
good_authors = %q{s.authors     = ["Elijah Miller", "Matthew Gordon"]}
good_emails  = %q{s.email       = ["elijah@expectedbehavior.com", "matt@expectedbehavior.com"]}

bad_files = %q{s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }}
bad_test_files = %q{s.test_files    = `find spec/*`.split("\n")}
good_files = %q{s.files         = `git ls-files`.split("\n").uniq.sort.select{|f| !f.empty? }}
good_test_files = %q{# s.test_files    = `git ls-files spec`.split("\n")}

development_dependency_marker = %q{  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.11'}
development_dependency_marker_plus_injection =
"  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.11'

  s.add_development_dependency 'rake', '~>11.2', '>= 11.2.2'
  s.add_development_dependency 'pry', '~>0.10', '>= 0.10.4'"

filename = "docraptor.gemspec"
content = File.read(filename)
updated_content = content.dup
updated_content.sub!(bad_authors, good_authors)
updated_content.sub!(bad_emails, good_emails)
updated_content.sub!(bad_files, good_files)
updated_content.sub!(bad_test_files, good_test_files)
updated_content.sub!(development_dependency_marker,
                     development_dependency_marker_plus_injection)

File.open(filename, "w") do |file|
  file.write(updated_content)
end
