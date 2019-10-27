![Screenshot](docs/clearent_logo.jpg)

# CocoaPods

# How to bring the pod into your project

:one: - Create your project.

:two: - Close your project.

:three: - Cd to project root

:four: - run this command -> pod init

:five: - Now you have a Podfile. Edit the podfile and put this in it:

```CocoaPods
source 'https://github.com/clearent/CocoaPods.git'
# Uncomment the next line to define a global platform for your project
platform :ios, '12.1'

target 'PROJECTNAME' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  pod 'ClearentIdtechIOSFrameworkPod', '1.0.84'

end
```

Change PROJECTNAME to the name of your project.

:six: - run this command : pod install.

:seven: - Now you have our Pod. Your project's settings and build phases have been modified to use it. From now on open your project using the workspace.

If for some reason the pod install failed and you want to remove the pod install you can run this command -> pod deintegrate.
