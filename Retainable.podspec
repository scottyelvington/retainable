Pod::Spec.new do |spec|
    spec.name         = "Retainable"
    spec.version      = "0.4.0"
    spec.summary      = "Retainable, a friendly Swifty way to eliminate closure boilerplate."
    spec.swift_version = '5.9'
    spec.homepage     = "https://github.com/scottyelvington/retainable"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author       = { "Scott Yelvington" => "scottyelvington@gmail.com" }
    spec.source       = { :git => "https://github.com/scottyelvington/retainable.git", :tag => "#{spec.version}" }
    spec.ios.deployment_target = '13.0'
    spec.source_files  = "Sources/Retainable/**/*.{swift}"
  end
  
