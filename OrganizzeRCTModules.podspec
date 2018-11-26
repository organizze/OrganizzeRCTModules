Pod::Spec.new do |s|
  s.name             = 'OrganizzeRCTModules'
  s.version          = '1.0.0'
  s.summary          = 'Organizze React Native X Ruby Motion interface.'


  s.description      = <<-DESC
                        Wrapper React Native X Ruby Motion interface.
                       DESC

  s.homepage         = 'https://github.com/Felipe/OrganizzeRCTModules'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Victor' => 'victor@organizze.com.br' }
  s.source           = { :git => 'git@github.com:organizze/OrganizzeRCTModules.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'OrganizzeRCTModules/Classes/**/*'
  
  s.dependency "React/Core"
end
