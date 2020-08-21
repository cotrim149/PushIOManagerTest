
Pod::Spec.new do |spec|

  spec.name         = "ConsumerAppPushIOPodWrapper"
  spec.module_name  = "PushIOManager"
  spec.version      = "6.45.0"
  spec.summary      = "This pod just wrap the PushIOManager framework."
  spec.homepage     = "https://github.com/pushio/PushIOManager_iOS.git"
  spec.documentation_url = "https://docs.oracle.com/cloud/latest/marketingcs_gs/OMCFB/index.html"
  spec.author       = { "Victor Cotrim" => "ext.victor.cotrim@farfetch.com" }
  spec.platform     = :ios
  spec.license      = { :type => "Commercial", :file => "LICENSE.txt" }

  spec.source       = { :git => "https://github.com/pushio/PushIOManager_iOS.git", :tag => "#{spec.version}" }

  spec.vendored_frameworks = "PushIOManager.framework"
  spec.preserve_paths = "PushIOManager.framework"

  spec.framework  = "CoreLocation","WebKit","UserNotifications"
  spec.library = "sqlite3"
  spec.requires_arc = true

  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC -all_load' }

end
