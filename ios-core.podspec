Pod::Spec.new do |s|
  s.name = 'ios-core'
  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '13.0'
  s.version = '2.1.226'
  s.authors = 'Carrefour'
  s.license = 'Proprietary'
  s.homepage = 'https://www.carrefour.es/'
  s.summary = 'Modulo principal para la app de iOS'
  s.source       = { :git => "http://bitbucket.es.wcorp.carrefour.com/scm/appmc/ios-core.git", :tag => s.version }
  s.source_files = '**/*.swift'
  s.dependency 'Firebase'
  s.dependency 'lottie-ios'
  s.dependency 'Firebase/Core'
  s.dependency 'Firebase/Analytics'
  s.dependency 'GoogleAnalytics'
  s.dependency 'Firebase/RemoteConfig'
  s.dependency 'AppsFlyerFramework'
  s.static_framework = true
end


