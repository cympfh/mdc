d = ARGV[0]
exit 1 if d.nil?

out = `mdc < #{d}/actual.md`
expect = `cat #{d}/expected.md`
re = Regexp.new "^#{expect.delete("\n")}$"

if re =~ out.delete("\n")
  exit 0
else
  STDERR.puts 'FAILED!'
  STDERR.puts "Expected:\n#{re}"
  STDERR.puts "Your output:\n#{out}"

  p out.delete("\n")
  p re
  exit 1
end
