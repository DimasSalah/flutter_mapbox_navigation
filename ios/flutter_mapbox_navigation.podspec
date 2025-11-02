Pod::Spec.new do |s|
  s.name             = 'flutter_mapbox_navigation'
  s.version          = '0.2.3'
  s.summary          = 'Turn-By-Turn Navigation for Flutter using Mapbox Navigation SDK'
  s.description      = <<-DESC
Add Turn By Turn Navigation to Your Flutter Application Using MapBox.
                       DESC
  s.homepage         = 'https://github.com/YOUR_USERNAME/flutter_mapbox_navigation'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'YOUR_USERNAME' => 'your.email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  # Platform
  s.platform = :ios, '12.0'
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  
  # Gunakan versi tertinggi yang tersedia
  s.dependency 'MapboxCoreNavigation', '2.20.2'
  s.dependency 'MapboxNavigation', '2.20.2'
  
  # JANGAN tambahkan MapboxMaps, MapboxCommon, Turf
  # Biar di-override di Podfile project
  
  # Build settings
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end