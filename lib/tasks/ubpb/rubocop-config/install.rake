namespace "ubpb" do
  namespace "rubocop-config" do
    desc "Install default Rubocop configuration for projects at UB Paderborn"
    task :install do
      system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../../../install/install.rb",  __dir__)}"
    end
  end
end
