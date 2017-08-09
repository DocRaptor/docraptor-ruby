bad_files       = %q{s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }}
bad_test_files  = %q{s.test_files    = `find spec/*`.split("\n")}
good_files      = %q{s.files         = `git ls-files`.split("\n").uniq.sort.select{|f| !f.empty? }}
good_test_files = %q{s.test_files    = `git ls-files spec test`.split("\n")}

development_dependency_marker = %q{  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'}
development_dependency_marker_plus_injection =
"  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.12'

  # added by script/fix_gemspec.rb.
  s.add_development_dependency 'rake', '~>11.2', '>= 11.2.2'
  s.add_development_dependency 'pry', '~>0.10', '>= 0.10.4'
  # </added> : if the above lines are missing in the gemspec, then
  # the matcher for autotest is probably broken"

filename = "docraptor.gemspec"
content = File.read(filename)
[bad_files, bad_test_files, development_dependency_marker].each do |bad_content_to_check|
  unless content.include?(bad_content_to_check)
    raise "Couldn't find content in docraptor.gemspec. Check matchers in there for: “#{bad_content_to_check}”"
  end
end
updated_content = content.dup
updated_content.sub!(bad_files, good_files)
updated_content.sub!(bad_test_files, good_test_files)
updated_content.sub!(development_dependency_marker,
                     development_dependency_marker_plus_injection)

File.open(filename, "w") do |file|
  file.write(updated_content)
end
