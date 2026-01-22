trigger:
- main

pool:
  vmImage: ubuntu-latest

steps:
- task: Maven@4
  inputs:
    mavenPomFile: 'pom.xml'
    goals: 'package'

- task: Docker@2
  inputs:
    command: build
    Dockerfile: Dockerfile
    tags: |
      mavenhelloworld:$(Build.BuildId)
