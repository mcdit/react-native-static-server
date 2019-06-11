require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = 'A cross platform component for serving static assets with React Native.'
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = 'http://futurepress.org'
  s.source         = { :git => 'https://github.com/futurepress/react-native-static-server.git' }

  s.requires_arc   = true
  s.platform       = :ios, '7.0'

  s.preserve_paths = 'README.md', 'package.json', 'index.js'
  s.source_files   = 'ios/*.{h,m}', 'ios/GCDWebServer/*/*.{h,m}'

  s.dependency 'React'
end
