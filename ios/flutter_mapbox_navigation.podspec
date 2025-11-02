Pod::Spec.new do |s|
  s.name             = 'flutter_mapbox_navigation'
  s.version          = '0.3.0'
  s.summary          = 'Turn-By-Turn Navigation for Flutter using Mapbox Navigation SDK'
  s.description      = <<-DESC
Add Turn By Turn Navigation to Your Flutter Application Using MapBox. Fixed for compatibility with mapbox_maps_flutter 2.12.0
                       DESC
  s.homepage         = 'https://github.com/YOUR_USERNAME/flutter_mapbox_navigation'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'YOUR_USERNAME' => 'your.email@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  
  # Platform requirements
  s.platform = :ios, '14.0'
  s.ios.deployment_target = '14.0'
  s.swift_version = '5.9'
  
  # PENTING: Di v3, MapboxNavigation sudah include semuanya
  # Jadi HANYA depend ke MapboxNavigation saja
  # JANGAN tambahkan MapboxCoreNavigation karena sudah tidak exist!
  
  # Main navigation dependency
  s.dependency 'MapboxNavigation', '~> 3.4'
  
  # Map dependencies - untuk kompatibilitas dengan mapbox_maps_flutter
  s.dependency 'MapboxMaps', '~> 11.16'
  
  # MapboxCommon akan otomatis terinstall via MapboxNavigation & MapboxMaps
  # Tapi kita bisa explicit untuk memastikan versi
  s.dependency 'MapboxCommon', '~> 24.16'
  
  # Build settings
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'SWIFT_VERSION' => '5.9',
    'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'
  }
  
  # Framework search paths
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-framework MapboxNavigation'
  }
end