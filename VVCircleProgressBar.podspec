Pod::Spec.new do |s|
s.name         = "VVCircleProgressBar"
s.version      = "0.0.4"
s.summary      = "A custom circle progress bar with pulse animation."
s.description  = <<-DESC
VVCircleProgressBar is a pulse animating custom progress bar.
DESC
s.homepage     = "https://github.com/vinothvino42/VVCircleProgressBar"
s.screenshots  = "https://github.com/vinothvino42/VVCircleProgressBar/raw/master/Preview/VVCircleProgressBar1.png", "https://github.com/vinothvino42/VVCircleProgressBar/raw/master/Preview/VVCircleProgressBar2.png"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Vinoth Vino" => "vinothvino42@gmail.com" }
s.social_media_url   = "http://twitter.com/vinothvino42"

s.platform     = :ios, "10.0"

s.source       = { :git => "https://github.com/vinothvino42/VVCircleProgressBar.git", :tag => "v0.0.4" }
s.source_files  = "VVCircleProgressBar/VVCircleProgressBar.swift"

s.framework  = "UIKit"

end
