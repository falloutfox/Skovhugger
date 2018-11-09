Pod::Spec.new do |s|
  s.name             = "Skovhugger"
  s.version          = '1.0.0'
  s.summary          = "Skovhugger"
  s.description      = <<-DESC
                        Skovhugger.
                       DESC
  s.homepage         = "https://github.com/falloutfox/Skovhugger.git"
  s.license          = 'MIT'
  s.author           = { "Oliver Stowell" => "I_90s@hotmail.com" }
  s.source           = { :git => "git@github.com:falloutfox/Skovhugger.git", :tag => s.version.to_s }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.public_header_files = ['Skovhugger/**/*.h']
  s.source_files = 'Skovhugger/**/*.{h,m,swift}'

  s.resources = [ "Skovhugger/**/*.xib",
                  "Skovhugger/**/*.png"]

  s.xcconfig =  { 'ENABLE_BITCODE' => 'YES',
                  'OTHER_LDFLAGS' => '$(inherited)"',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
                  'LIBRARY_SEARCH_PATHS' => '$(inherited)'
                }

end
