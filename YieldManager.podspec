Pod::Spec.new do |s|
  s.name              = "YieldManager"
  s.version           = "0.0.1"
  s.summary           = "Nektria gives an SDK to integrate the service of time windows closing"
  s.homepage          = "https://github.com/nektria/yieldmanager-ios"
  s.documentation_url = "https://github.com/nektria/yieldmanager-ios"
  s.screenshots       = "https://s3-eu-west-1.amazonaws.com/nektria-blog/wp-content/uploads/2018/02/23124552/devices_dynamicpricing21.png"
  s.license           = "Apache License, Version 2.0"
  s.author            = { "Nektria IT" => "it@nektria.com" }
  s.platform          = :ios
  s.source            = { :git => "https://github.com/nektria/yieldmanager-ios.git", :tag => s.version }
  s.source_files      = "Source/*.swift"
  s.swift_version     = '4.0'
  s.ios.deployment_target  = '10.0'
end

