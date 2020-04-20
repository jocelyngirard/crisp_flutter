#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint crisp_flutter.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'crisp_flutter'
  s.version          = '0.0.1'
  s.summary          = 'Crisp mobile SDK for Flutter'
  s.description      = <<-DESC
Crisp mobile SDK for Flutter
                       DESC
  s.homepage         = 'https://github.com/jocelyngirard/crisp_flutter'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jocelyn Girard' => 'jocelyn@erioxyde.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'

  # Crisp IM for iOS
  s.dependency = 'Crisp'
end
