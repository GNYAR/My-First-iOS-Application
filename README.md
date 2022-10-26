# My-First-iOS-Application

This is an imitation of the McDonald's APP in Taiwan ([麥當勞](https://apps.apple.com/tw/app/id1094635803)).

## Demo

<img src="assets/demo.gif" alt="demo" style="width: 240px" />

# Create a project with public Mac

- Git User

  Set project user
  ```
  $ git config user.name "GNYAR"
  $ git config user.email "s901121s901121@gmail.com"
  ```
    Change the author of Initial Commit
  ```
  $ git commit --amend --author="GNYAR <s901121s901121@gmail.com>" --no-edit
  ```

- .gitignore

  *PROJECT*.xcodeproj/.gitignore
  ```
  /project.xcworkspace/xcshareddata/WorkspaceSettings.xcsettings
  xcuserdata
  ```
