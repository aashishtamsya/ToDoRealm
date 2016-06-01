# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

def database_pods 
	pod 'RealmSwift', '~> 0.103.1'
end

def shared_pods

end

def testing_pods
	pod 'Quick', '~> 0.9.2'
	pod 'Nimble', '~> 4.0.1'
end

target 'ATToDoRealm' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for ATToDoRealm
	database_pods
	
  target 'ATToDoRealmTests' do
    inherit! :search_paths
    # Pods for testing
	testing_pods
  end

  target 'ATToDoRealmUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
