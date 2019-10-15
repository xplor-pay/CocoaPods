# CocoaPods

# How to bring the pod into your project

1 - Create your project.

2 - Close your project.

3 - Cd to project root

4 - run this command -> pod init

5 - Now you have a Podfile. Edit the podfile and put this in it:

```
source 'https://github.com/clearent/CocoaPods.git'
# Uncomment the next line to define a global platform for your project
platform :ios, '12.1'

target 'PROJECTNAME' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  pod 'ClearentIdtechIOSFrameworkPod', '1.0.83'

end
```

Change PROJECTNAME to the name of your project.

6 - run this command : pod install.

7 - Now you have our Pod. Your project's settings and build phases have been modified to use it. From now on open your project using the workspace.
