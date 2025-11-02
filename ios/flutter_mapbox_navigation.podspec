#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_mapbox_navigation'
  s.version          = '0.2.2'
  s.summary          = 'Turn-By-Turn Navigation for Flutter using Mapbox Navigation SDK'
  s.description      = <<-DESC
Add Turn By Turn Navigation to Your Flutter Application Using MapBox. Unofficial Fork.
                       DESC
  s.homepage         = 'https://github.com/YOUR_USERNAME/flutter_mapbox_navigation'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'YOUR_USERNAME' => 'your.email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  # Update ke versi yang kompatibel dengan mapbox_maps_flutter 2.12.0
  s.dependency 'MapboxMaps', '~> 11.16'
  s.dependency 'MapboxCommon', '~> 24.16'
  s.dependency 'MapboxCoreMaps', '~> 11.16'
  s.dependency 'Turf', '~> 4.0'
  
  # Navigation dependencies - cari versi yang kompatibel
  s.dependency 'MapboxCoreNavigation', '~> 3.0'
  s.dependency 'MapboxNavigation', '~> 3.0'
  
  s.platform = :ios, '14.0'
  s.ios.deployment_target = '14.0'
  s.swift_version = '5.0'
  
  # Tambahan untuk menghindari warning
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
  s.swift_version = '5.0'
end