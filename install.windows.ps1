# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/isidore/RefactoringClass/Master/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex
iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/java-intellij.ps1 | iex

#install project specific tools 
choco install -y jdk8 

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/isidore/RefactoringClass.git C:\Code\RefactoringClass

start C:\Code\RefactoringClass
# Done
cls
echo "Done!"
