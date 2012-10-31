describe "CLI" do
	Exec = "bundle exec bin/rcat"
	it "Can take a file list to cat to screen with color (\\e[0m)." do
		output = `#{Exec} bini-rcat.gemspec`
		#output.include?("\e[0m").should be_true
	end
	it "Can take input from a pipe."
	it "Can select the theme."
	it "can override the syntax"
	it "can detect syntax with files that don't have extensions."
end
