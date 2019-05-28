$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'amazon-workspaces'
$fileType	= 'msi'
$url	= 'https://d2td7dqidlhjx7.cloudfront.net/prod/global/windows/Amazon+WorkSpaces.msi'
$url64bit	= $url
$softwareName	= "Amazon WorkSpaces*"
$checksum	= 'FE56F0618E55F74D675C814B533B43B7B035CF301B8DD07FA7C9CE2480D199E1'
$checksumType	= 'sha256'
$checksum64	= $checksum
$checksumType64	= $checksumType
$silentArgs	= '/qn REBOOT=ReallySuppress'
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName		= $env:ChocolateyPackageName
	  unzipLocation		= $toolsDir
	  fileType			= $fileType
	  url				= $url
	  url64bit			= $url64bit
	  softwareName		= $softwareName
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  checksum64      	= $checksum64
	  checksumType64	= $checksumType64
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes
	}

Install-ChocolateyPackage @packageArgs
