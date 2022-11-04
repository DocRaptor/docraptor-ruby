# These, at least the first two, significantly increase speed of a test run by
# limiting the filesystem interaction that occurs with bundler installing and
# requiring files.
bad_files         = %q{s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }}
good_files        = %q{s.files         = `git ls-files`.split("\n").uniq.sort.select { |f| !f.empty? }}
bad_test_files    = %q{s.test_files    = `find spec/*`.split("\n")}
good_test_files   = %q{s.test_files    = `git ls-files spec test`.split("\n")}

filename = "docraptor.gemspec"
content = File.read(filename)
[
  bad_files,
  bad_test_files,
].each do |bad_content_to_check|
  unless content.include?(bad_content_to_check)
    raise "Couldn't find content in docraptor.gemspec. Check matchers in there for: “#{bad_content_to_check}”"
  end
end
updated_content = content.dup
updated_content.sub!(bad_files, good_files)
updated_content.sub!(bad_test_files, good_test_files)

File.open(filename, "w") do |file|
  file.write(updated_content)
end
