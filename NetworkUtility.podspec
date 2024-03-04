
Pod::Spec.new do |spec|

  spec.name         = "NetworkUtility"
  spec.version      = "1.0.0"
  spec.summary      = "A framework to make network requests in iOS"
  spec.description  = "A framework build to make network request using async/await that supports iOS 15+"
  spec.homepage     = "https://github.com/koushik0910/NetworkUtility2"
  spec.license      = "MIT"
  spec.author             = { "Koushik Dutta" => "koushik0910@gmail.com" }
  spec.platform     = :ios, "15.0"

  spec.source       = { :git => "https://github.com/koushik0910/NetworkUtility2.git", :tag => spec.version.to_s }

  spec.source_files  = "NetworkUtility/**/*.{swift}"
  spec.swift_versions = "5.0"
end
