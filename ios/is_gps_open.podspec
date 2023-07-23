#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint is_gps_open.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'is_gps_open'
  s.version          = '0.0.2'
  s.summary          = 'Check if the device GPS is turned on'
  s.description      = <<-DESC
Detects if device is in lock screen. Useful for determining whether app entered background due to locking screen or leaving app.
                       DESC
  s.homepage         = 'https://github.com/Wing-Li/flutter_is_gps_open'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Wing-Li' => 'iamlyl@foxmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
end
