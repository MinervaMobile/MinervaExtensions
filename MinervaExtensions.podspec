Pod::Spec.new do |s|
  s.name = "MinervaExtensions"
  s.version = "3.0.1"
  s.license = { :type => 'MIT', :file => 'LICENSE' }

  s.summary = "A Swift MVVM Framework"
  s.homepage = "https://github.com/MinervaMobile/MinervaExtensions"
  s.author = { "Joe Laws" => "joe.laws@gmail.com" }

  s.source = { :git => "https://github.com/MinervaMobile/MinervaExtensions.git", :tag => s.version }

  s.default_subspecs = 'Cells', 'Convenience', 'PanModal', 'SplitView', 'Swipe'

  s.requires_arc = true
  s.swift_versions = '5.3'

  s.ios.deployment_target = '11.0'
  s.ios.frameworks = 'Foundation', 'UIKit'

  s.subspec 'Cells' do |ss|
    ss.source_files = 'Source/Cells/**/*.swift'

    ss.dependency 'IGListKit'
    ss.dependency 'MinervaList'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'Convenience' do |ss|
    ss.source_files = 'Source/Convenience/**/*.swift'

    ss.dependency 'IGListKit'
    ss.dependency 'MinervaCoordinator'
    ss.dependency 'MinervaList'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'PanModal' do |ss|
    ss.source_files = 'Source/PanModal/**/*.swift'

    ss.dependency 'MinervaExtensions/Convenience'

    ss.dependency 'MinervaCoordinator'
    ss.dependency 'MinervaList'
    ss.dependency 'PanModal'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'SplitView' do |ss|
    ss.source_files = 'Source/SplitView/**/*.swift'

    ss.dependency 'MinervaCoordinator'
    ss.dependency 'MinervaList'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end

  s.subspec 'Swipe' do |ss|
    ss.source_files = 'Source/Swipe/**/*.swift'

    ss.dependency 'MinervaExtensions/Cells'

    ss.dependency 'MinervaList'
    ss.dependency 'IGListKit'
    ss.dependency 'RxRelay'
    ss.dependency 'RxSwift'
    ss.dependency 'SwipeCellKit'

    ss.ios.deployment_target = '11.0'
    ss.ios.frameworks = 'Foundation', 'UIKit'
  end
end
