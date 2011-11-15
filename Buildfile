# add maven repositories
repositories.remote << 'http://repo1.maven.org/maven2'

define 'jruby-thrift' do
  project.version = '0.7.0'
  
  # add dependencies
  compile.with(
    'org.slf4j:slf4j-api:jar:1.6.2',
    'org.slf4j:slf4j-simple:jar:1.6.2',
    'org.apache.thrift:libthrift:jar:0.7.0',
    'commons-lang:commons-lang:jar:2.5',
    'commons-codec:commons-codec:jar:1.5',
    'commons-codec:commons-codec:jar:1.5',
    'commons-logging:commons-logging:jar:1.1.1',
    'javax.servlet:servlet-api:jar:2.5',
    'org.apache.httpcomponents:httpclient:jar:4.1.1',
    'org.apache.httpcomponents:httpclient-cache:jar:4.1.1',
    'org.apache.httpcomponents:httpcore:jar:4.1.1',
    'org.apache.httpcomponents:httpmime:jar:4.1.1'
  )  
  desc 'copy all dependent jars to lib/java folder'
  task :copy_dependencies do
    mkdir project.path_to('lib/java') rescue nil
    cp project.compile.dependencies.collect { |t| t.to_s }, project.path_to('lib/java') 
  end
  
  task :setup => [ :package, :copy_dependencies ]
end