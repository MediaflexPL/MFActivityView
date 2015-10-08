#
# Be sure to run `pod lib lint MFActivityView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MFActivityView"
  s.version          = "0.1.0"
  s.summary          = "An alternative for displaying activity information in a UIAlertView."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
    A small addition for [DejalViewController](https://github.com/Dejal/DejalActivityView). It enables the bezel view show/remove animation to have custom duration.

                       DESC

  s.homepage         = "https://github.com/MediaflexPL/MFActivityView"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'BSD 2-clause'
  s.author           = { "Jakub Darowski" => "jakub.darowski@mediaflex.pl" }
  s.source           = { :git => "https://github.com/MediaflexPL/MFActivityView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MFActivityView' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'DejalActivityView', '~> 1.2'
end
