#
# Module manifest for module 'PSWindowsUpdate'
#
# Generated by: Michal Gajda
#
# Generated on: 2011-01-20
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'PSWindowsUpdate.dll'

# Version number of this module.
	# Major    - milestone, e.g. new module core
	# Minor    - new solutions, e.g. new cmdlets
	# Build    - new features, e.g. new params
	# Revision - fixed bugs, typos, etc...
ModuleVersion = '2.2.1.4'

# Supported PSEditions
CompatiblePSEditions = @('Desktop')

# ID used to uniquely identify this module
GUID = '8ed488ad-7c77-4b33-b06e-32214925163b'

# Author of this module
Author = 'Michal Gajda'

# Company or vendor of this module
CompanyName = 'Michal Gajda'

# Copyright statement for this module
Copyright = '(c) 2011-2023 Michal Gajda. All rights reserved.'

# Description of the functionality provided by this module
Description = 'This module contain cmdlets to manage Windows Update Client.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1.0.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.5.1'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
FormatsToProcess = 'PSWindowsUpdate.Format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = 'PSWindowsUpdate.psm1'

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @('Add-WUServiceManager', 'Enable-WURemoting', 'Get-WindowsUpdate', 'Get-WUApiVersion', 'Get-WUHistory', 'Get-WUInstallerStatus', 'Get-WUJob', 'Get-WULastResults', 'Get-WURebootStatus', 'Get-WUServiceManager', 'Get-WUSettings', 'Invoke-WUJob', 'Remove-WindowsUpdate', 'Remove-WUServiceManager', 'Set-WUSettings', 'Update-WUModule', 'Set-PSWUSettings', 'Reset-WUComponents', 'Get-WUOfflineMSU')

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = 'PSWindowsUpdate.dll','PSWindowsUpdate.dll-Help.xml','PSWindowsUpdate.Format.ps1xml','PSWindowsUpdate.psd1','PSWindowsUpdate.psm1'

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @('Microsoft','Windows','Update')

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/mgajda83/PSWindowsUpdate/blob/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/mgajda83/PSWindowsUpdate'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
		ReleaseNotes = '
v2.2.1  - Set-WUSettings added params to control TargetRelease for control Feature Updates version and Windows Update for Business
		- Fixes Remove-WindowsUpdate bug
		- Fixes Get-WUHistory bug
		- Fixes Get-WindowsUpdate sendreport bug

v2.2.0  - New cmdlet Reset-WUComponents, for reset Windows Updates components to default
		- New cmdlet Get-WUOfflineMSU, for download offline msu package from microsoft Update Catalog

v2.1.1  - Remove-WindowsUpdate added WU Api uninstallation mode
		- Fixed bug with slow run cmdlets
		- Added support for Office 365 users to send emails

v2.1.0  - New cmdlet Set-PSWUSettings, for save PSWUSettings to xml file
		- Param -SendReport can use smtp server credentials
		- Install-WindowsUpdate added -RecurseCycle param, to install next updates after reboot
		- Install-WindowsUpdate added new pre search criteria: DeploymentAction, IsAssigned, IsPresent, BrowseOnly and AutoSelectOnWebSites
		- Change location of PSWindowsUpdate.log file to $Env:TEMP
		- Fixed Get-WULastResults bugs
		- Fixed Remove-WUServiceManager bugs

v2.0.0 - Rewrite whole script module to binary module
		
Cmdlets maping for old module:
v1.6.x                  => v2.0.x
Add-WUOfflineSync       => Add-WUServiceManager
Add-WUServiceManager    => Add-WUServiceManager
-                       => Enable-WURemoting
Get-WUHistory           => Get-WUHistory
Get-WUList              => Get-WindowsUpdate
Get-WUInstall           => Download-WindowsUpdate  (or Get-WindowsUpdate -Download)
Get-WUInstall           => Install-WindowsUpdate   (or Get-WindowsUpdate -Install)
Hide-WUUpdate           => Hide-WindowsUpdate      (or Get-WindowsUpdate -Hide)
Get-WUInstallerStatus   => Get-WUInstallerStatus
Get-WURebootStatus      => Get-WURebootStatus
Get-WUServiceManager    => Get-WUServiceManager
Get-WUUninstall         => Remove-WindowsUpdate
Invoke-WUInstall        => Invoke-WUJob
-                       => Get-WUJob
Remove-WUOfflineSync    => Remove-WUServiceManager
Remove-WUServiceManager => Remove-WUServiceManager
Get-WUAPIVersion        => Get-WUAPIVersion
Get-WULastResults       => Get-WULastResults
Start-WUDetectNow       => -
Start-WUService         => -
Get-WUSettings          => Get-WUSettings
Set-WUSettings          => Set-WUSettings
Update-WUModule         => Update-WUModule'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIIuRgYJKoZIhvcNAQcCoIIuNzCCLjMCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBtacVtlJrK18m/
# XgF9iiMPktftAuGoa3mdkuZQPHYtZKCCJnowggXJMIIEsaADAgECAhAbtY8lKt8j
# AEkoya49fu0nMA0GCSqGSIb3DQEBDAUAMH4xCzAJBgNVBAYTAlBMMSIwIAYDVQQK
# ExlVbml6ZXRvIFRlY2hub2xvZ2llcyBTLkEuMScwJQYDVQQLEx5DZXJ0dW0gQ2Vy
# dGlmaWNhdGlvbiBBdXRob3JpdHkxIjAgBgNVBAMTGUNlcnR1bSBUcnVzdGVkIE5l
# dHdvcmsgQ0EwHhcNMjEwNTMxMDY0MzA2WhcNMjkwOTE3MDY0MzA2WjCBgDELMAkG
# A1UEBhMCUEwxIjAgBgNVBAoTGVVuaXpldG8gVGVjaG5vbG9naWVzIFMuQS4xJzAl
# BgNVBAsTHkNlcnR1bSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTEkMCIGA1UEAxMb
# Q2VydHVtIFRydXN0ZWQgTmV0d29yayBDQSAyMIICIjANBgkqhkiG9w0BAQEFAAOC
# Ag8AMIICCgKCAgEAvfl4+ObVgAxknYYblmRnPyI6HnUBfe/7XGeMycxca6mR5rlC
# 5SBLm9qbe7mZXdmbgEvXhEArJ9PoujC7Pgkap0mV7ytAJMKXx6fumyXvqAoAl4Va
# qp3cKcniNQfrcE1K1sGzVrihQTib0fsxf4/gX+GxPw+OFklg1waNGPmqJhCrKtPQ
# 0WeNG0a+RzDVLnLRxWPa52N5RH5LYySJhi40PylMUosqp8DikSiJucBb+R3Z5yet
# /5oCl8HGUJKbAiy9qbk0WQq/hEr/3/6zn+vZnuCYI+yma3cWKtvMrTscpIfcRnNe
# GWJoRVfkkIJCu0LW8GHgwaM9ZqNd9BjuiMmNF0UpmTJ1AjHuKSbIawLmtWJFfzcV
# WiNoidQ+3k4nsPBADLxNF8tNorMe0AZa3faTz1d1mfX6hhpneLO/lv403L3nUlbl
# s+V1e9dBkQXcXWnjlQ1DufyDljmVe2yAWk8TcsbXfSl6RLpSpCrVQUYJIP4ioLZb
# MI28iQzV13D4h1L92u+sUS4Hs07+0AnacO+Y+lbmbdu1V0vc5SwlFcieLnhO+Nqc
# noYsylfzGuXIkosagpZ6w7xQEmnYDlpGizrrJvojybawgb5CAKT41v4wLsfSRvbl
# jnX98sy50IdbzAYQYLuDNbdeZ95H7JlI8aShFf6tjGKOOVVPORa5sWOd/7cCAwEA
# AaOCAT4wggE6MA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFLahVDkCw6A/joq8
# +tT4HKbROg79MB8GA1UdIwQYMBaAFAh2zcsH/yT2xc3tu5C84oQ3RnX3MA4GA1Ud
# DwEB/wQEAwIBBjAvBgNVHR8EKDAmMCSgIqAghh5odHRwOi8vY3JsLmNlcnR1bS5w
# bC9jdG5jYS5jcmwwawYIKwYBBQUHAQEEXzBdMCgGCCsGAQUFBzABhhxodHRwOi8v
# c3ViY2Eub2NzcC1jZXJ0dW0uY29tMDEGCCsGAQUFBzAChiVodHRwOi8vcmVwb3Np
# dG9yeS5jZXJ0dW0ucGwvY3RuY2EuY2VyMDkGA1UdIAQyMDAwLgYEVR0gADAmMCQG
# CCsGAQUFBwIBFhhodHRwOi8vd3d3LmNlcnR1bS5wbC9DUFMwDQYJKoZIhvcNAQEM
# BQADggEBAFHCoVgWIhCL/IYx1MIy01z4S6Ivaj5N+KsIHu3V6PrnCA3st8YeDrJ1
# BXqxC/rXdGoABh+kzqrya33YEcARCNQOTWHFOqj6seHjmOriY/1B9ZN9DbxdkjuR
# mmW60F9MvkyNaAMQFtXx0ASKhTP5N+dbLiZpQjy6zbzUeulNndrnQ/tjUoCFBMQl
# lVXwfqefAcVbKPjgzoZwpic7Ofs4LphTZSJ1Ldf23SIikZbr3WjtP6MZl9M7JYjs
# NhI9qX7OAo0FmpKnJ25FspxihjcNpDOO16hO0EoXQ0zF8ads0h5YbBRRfopUofbv
# n3l6XYGaFpAP4bvxSgD5+d2+7arszgowggXSMIIDuqADAgECAhAh1tBKTyUPyTI3
# /KpeEo3pMA0GCSqGSIb3DQEBDQUAMIGAMQswCQYDVQQGEwJQTDEiMCAGA1UEChMZ
# VW5pemV0byBUZWNobm9sb2dpZXMgUy5BLjEnMCUGA1UECxMeQ2VydHVtIENlcnRp
# ZmljYXRpb24gQXV0aG9yaXR5MSQwIgYDVQQDExtDZXJ0dW0gVHJ1c3RlZCBOZXR3
# b3JrIENBIDIwIhgPMjAxMTEwMDYwODM5NTZaGA8yMDQ2MTAwNjA4Mzk1NlowgYAx
# CzAJBgNVBAYTAlBMMSIwIAYDVQQKExlVbml6ZXRvIFRlY2hub2xvZ2llcyBTLkEu
# MScwJQYDVQQLEx5DZXJ0dW0gQ2VydGlmaWNhdGlvbiBBdXRob3JpdHkxJDAiBgNV
# BAMTG0NlcnR1bSBUcnVzdGVkIE5ldHdvcmsgQ0EgMjCCAiIwDQYJKoZIhvcNAQEB
# BQADggIPADCCAgoCggIBAL35ePjm1YAMZJ2GG5ZkZz8iOh51AX3v+1xnjMnMXGup
# kea5QuUgS5vam3u5mV3Zm4BL14RAKyfT6Lowuz4JGqdJle8rQCTCl8en7psl76gK
# AJeFWqqd3CnJ4jUH63BNStbBs1a4oUE4m9H7MX+P4F/hsT8PjhZJYNcGjRj5qiYQ
# qyrT0NFnjRtGvkcw1S5y0cVj2udjeUR+S2MkiYYuND8pTFKLKqfA4pEoibnAW/kd
# 2ecnrf+aApfBxlCSmwIsvam5NFkKv4RK/9/+s5/r2Z7gmCPspmt3FirbzK07HKSH
# 3EZzXhliaEVX5JCCQrtC1vBh4MGjPWajXfQY7ojJjRdFKZkydQIx7ikmyGsC5rVi
# RX83FVojaInUPt5OJ7DwQAy8TRfLTaKzHtAGWt32k89XdZn1+oYaZ3izv5b+NNy9
# 51JW5bPldXvXQZEF3F1p45UNQ7n8g5Y5lXtsgFpPE3LG130pekS6UqQq1UFGCSD+
# IqC2WzCNvIkM1ddw+IdS/drvrFEuB7NO/tAJ2nDvmPpW5m3btVdL3OUsJRXIni54
# TvjanJ6GLMpX8xrlyJKLGoKWesO8UBJp2A5aRos66yb6I8m2sIG+QgCk+Nb+MC7H
# 0kb25Y51/fLMudCHW8wGEGC7gzW3XmfeR+yZSPGkoRX+rYxijjlVTzkWubFjnf+3
# AgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFLahVDkCw6A/joq8
# +tT4HKbROg79MA4GA1UdDwEB/wQEAwIBBjANBgkqhkiG9w0BAQ0FAAOCAgEAcaUO
# zuTpvz841YlaxAJh+0zFFBcti09TaxAX/GWExxBJkN7bxyaTiCZvcNYCXjmg94+r
# lrWlE1yBFG0OgYIRG4pOxk+l3WIeRN8JWfRbdws36YsgxvgKTi5YHOsz0M+GYMna
# +4AvnkxghHg9IWTW+0EfGA/nyXVxvb1c3jSHPkGwDva51j8JE5YUL96aHVq5Vs41
# OrBfcE1e4ynxIyhyWbarwoxmJhx3LCZ2NYsop2mg+Tv1I92FEHTJkANWkeevukfU
# EpcRIuOiSZRs57eUS7otpNozi0ymRP9aPMYdZNi1MeSmPHqoVwvb7WEay/HOc3dj
# pIdvTFE41uRfx5+2gSrkhUh5WF47+NsCgmfBOdvDdEs9Nh75KZOIaFuoRBkh8Kfo
# gQ0s6JM2tDeyyrAbJnqaJR+amoCeSyo/+6Oa/nMyccKexnLhimgn8eQPtMRMpWGT
# +JcQByowJam5yHG472jMLX714H4Pgqhvtrpsg0N3zYqSF6GeW3gWPUXiM3Ld4WbK
# mdPJxSb9DWgERq622ZuMvhm+scbyGeNcAsos2G9KB9nJNdpAdfLEpxlvnkIQmHXm
# lYtgvO3FEteKztWYXFaWA8XudwY1/8/k7j8TYe7b2i2F8M2unbIYCUXDkqFyF/xH
# tqALLPHE3kNoCGpfO/B2Y/vMBiymxuIOtbm+JI8wggaVMIIEfaADAgECAhAJxcz4
# u2Z9cTeqwVmABssxMA0GCSqGSIb3DQEBDAUAMFYxCzAJBgNVBAYTAlBMMSEwHwYD
# VQQKExhBc3NlY28gRGF0YSBTeXN0ZW1zIFMuQS4xJDAiBgNVBAMTG0NlcnR1bSBU
# aW1lc3RhbXBpbmcgMjAyMSBDQTAeFw0yMzExMDIwODMyMjNaFw0zNDEwMzAwODMy
# MjNaMFAxCzAJBgNVBAYTAlBMMSEwHwYDVQQKDBhBc3NlY28gRGF0YSBTeXN0ZW1z
# IFMuQS4xHjAcBgNVBAMMFUNlcnR1bSBUaW1lc3RhbXAgMjAyMzCCAiIwDQYJKoZI
# hvcNAQEBBQADggIPADCCAgoCggIBALkWuurG532SNqqCQCjzkjK3p5w3fjc5Y/O0
# 04WQ5G+xzq6SG5w45BD6zPEfSOyLcBGMHAbVv2hDCcPHUI46Q6nCbYfNjbPG0l7Z
# faoL4fwMy3j6dQ0BgW4wQyNF6rmm0NMjcmJ0MRuBzEp2vZrN8LCYncWmoakqvUtu
# 0IPZjuIuvBk7E4OR1VgoTIkvRQ8nYDXwmA1Hnj4JnT+lV8J9s4RlqDrmjJTcDfdl
# jzyHmaHOf1Yg8X+otHmq30cp727xj64yDPwwpBqAf9qNYb+5hyp5ArbwBLcSHkBx
# LCXjEV/AcZoXATHEFZJctlEZRuf1oV2KtJkop17bSnUI6WZmTEiYlj5vFBhKDDmc
# QzSM+Dqt48P7QhBBzgA8rp1IcA5BLdC8Emt/NNaUJCiQa06/Fw0izlw69oA2ZNwZ
# wuCQfR4eAwGksWVzLMTRCRjwd6H7GW1kUSIC8rmBufwIezyij2jT8mMup1Zgutbg
# ecRLjf80LX+w5oJWa2yVNoWhb9ZFFu0lpGsr/TeMWOs33bV0Ke1FGKcH8TDcxDWT
# E83rThYIx4u8A6lPcXkpsFeg8Osyhb04ZNidiq/zwDqFNtUVGz4SLxQmOTgiV86S
# cdZ26KZEpDgtgNjUYNIDfdhRn9zc+ii1qdzaJY81q+PL+J4Ngh0fxdVtF9apyGcO
# lMT7Q0VzAgMBAAGjggFjMIIBXzAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBTHaTwu
# 5r3jWUf/GRLB2TToQc/jjzAfBgNVHSMEGDAWgBS+VAIvv0Bsc0POrAklTp5DRBru
# 4DAOBgNVHQ8BAf8EBAMCB4AwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwMwYDVR0f
# BCwwKjAooCagJIYiaHR0cDovL2NybC5jZXJ0dW0ucGwvY3RzY2EyMDIxLmNybDBv
# BggrBgEFBQcBAQRjMGEwKAYIKwYBBQUHMAGGHGh0dHA6Ly9zdWJjYS5vY3NwLWNl
# cnR1bS5jb20wNQYIKwYBBQUHMAKGKWh0dHA6Ly9yZXBvc2l0b3J5LmNlcnR1bS5w
# bC9jdHNjYTIwMjEuY2VyMEEGA1UdIAQ6MDgwNgYLKoRoAYb2dwIFAQswJzAlBggr
# BgEFBQcCARYZaHR0cHM6Ly93d3cuY2VydHVtLnBsL0NQUzANBgkqhkiG9w0BAQwF
# AAOCAgEAeN3usTpD5vfZazi9Ml4LQdwYOLuZ9BSdton2cUU5CmLM9f5gike4rz1M
# +Q50MXuU4SZNnNVCnDSTCkhkO4HyVIzQbD0qWg69ciwaMX8qBM3FgzlpWJA0y2gi
# IXpb3Kya5sMcXuUTFJOg93Wv43TNgZeUTW4Rfij3zwr9nuTCAT8YLrj1LU4RnkgZ
# IaaKu1yu4tf/GGMgMDlL9xV/PRZ78SUdqYez5R9bf8jFOKC++rgkJt1keD0OyORb
# 5SAYYBW2TEHuqKeZYlqa93CmC6MDA5PXKb+CI9NbkLz8yeQvXxmBVDfyyoqoV2pR
# L5khV5cp9Xnwdpa1XYuKnVjSW4vsyzBvznqPPvNcg2Tv0fhd9tY6vJ/sC1YGOu6z
# byOYdYreBc2GPZK1Vw4jjwNzoIV9cMyj9z8T9pvbXuRNiGKG3asJZ4ZLlMdDdtlX
# H6VQ8toN7eRVeNi/ExhApa7ThBfr69REVJ4vdZWtRI7qcSdm7tfYRhyLkxSaZR0Q
# SIBVk7/TfIuU1ZQ0Zfvb/3j29T7lk32v0QZ2ntfdbuYsvVPHiAuYeesH3s7571Fg
# rrfvQwLnayK5+7XWnefw4bmzbMnDYnoukP4ctvIKB9Eh31DlQqCyPQDVC6gG63wU
# jph1ofexHWmicS/oaw1itPIG1JHvtyxRYtQLJVuiwXf5p7T5Kh8wgga5MIIEoaAD
# AgECAhEAmaOACiZVO2Wr3G6EprPqOTANBgkqhkiG9w0BAQwFADCBgDELMAkGA1UE
# BhMCUEwxIjAgBgNVBAoTGVVuaXpldG8gVGVjaG5vbG9naWVzIFMuQS4xJzAlBgNV
# BAsTHkNlcnR1bSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTEkMCIGA1UEAxMbQ2Vy
# dHVtIFRydXN0ZWQgTmV0d29yayBDQSAyMB4XDTIxMDUxOTA1MzIxOFoXDTM2MDUx
# ODA1MzIxOFowVjELMAkGA1UEBhMCUEwxITAfBgNVBAoTGEFzc2VjbyBEYXRhIFN5
# c3RlbXMgUy5BLjEkMCIGA1UEAxMbQ2VydHVtIENvZGUgU2lnbmluZyAyMDIxIENB
# MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAnSPPBDAjO8FGLOczcz5j
# XXp1ur5cTbq96y34vuTmflN4mSAfgLKTvggv24/rWiVGzGxT9YEASVMw1Aj8ewTS
# 4IndU8s7VS5+djSoMcbvIKck6+hI1shsylP4JyLvmxwLHtSworV9wmjhNd627h27
# a8RdrT1PH9ud0IF+njvMk2xqbNTIPsnWtw3E7DmDoUmDQiYi/ucJ42fcHqBkbbxY
# DB7SYOouu9Tj1yHIohzuC8KNqfcYf7Z4/iZgkBJ+UFNDcc6zokZ2uJIxWgPWXMEm
# hu1gMXgv8aGUsRdaCtVD2bSlbfsq7BiqljjaCun+RJgTgFRCtsuAEw0pG9+FA+yQ
# N9n/kZtMLK+Wo837Q4QOZgYqVWQ4x6cM7/G0yswg1ElLlJj6NYKLw9EcBXE7TF3H
# ybZtYvj9lDV2nT8mFSkcSkAExzd4prHwYjUXTeZIlVXqj+eaYqoMTpMrfh5MCAOI
# G5knN4Q/JHuurfTI5XDYO962WZayx7ACFf5ydJpoEowSP07YaBiQ8nXpDkNrUA9g
# 7qf/rCkKbWpQ5boufUnq1UiYPIAHlezf4muJqxqIns/kqld6JVX8cixbd6PzkDpw
# Zo4SlADaCi2JSplKShBSND36E/ENVv8urPS0yOnpG4tIoBGxVCARPCg1BnyMJ4rB
# JAcOSnAWd18Jx5n858JSqPECAwEAAaOCAVUwggFRMA8GA1UdEwEB/wQFMAMBAf8w
# HQYDVR0OBBYEFN10XUwA23ufoHTKsW73PMAywHDNMB8GA1UdIwQYMBaAFLahVDkC
# w6A/joq8+tT4HKbROg79MA4GA1UdDwEB/wQEAwIBBjATBgNVHSUEDDAKBggrBgEF
# BQcDAzAwBgNVHR8EKTAnMCWgI6Ahhh9odHRwOi8vY3JsLmNlcnR1bS5wbC9jdG5j
# YTIuY3JsMGwGCCsGAQUFBwEBBGAwXjAoBggrBgEFBQcwAYYcaHR0cDovL3N1YmNh
# Lm9jc3AtY2VydHVtLmNvbTAyBggrBgEFBQcwAoYmaHR0cDovL3JlcG9zaXRvcnku
# Y2VydHVtLnBsL2N0bmNhMi5jZXIwOQYDVR0gBDIwMDAuBgRVHSAAMCYwJAYIKwYB
# BQUHAgEWGGh0dHA6Ly93d3cuY2VydHVtLnBsL0NQUzANBgkqhkiG9w0BAQwFAAOC
# AgEAdYhYD+WPUCiaU58Q7EP89DttyZqGYn2XRDhJkL6P+/T0IPZyxfxiXumYlARM
# gwRzLRUStJl490L94C9LGF3vjzzH8Jq3iR74BRlkO18J3zIdmCKQa5LyZ48IfICJ
# TZVJeChDUyuQy6rGDxLUUAsO0eqeLNhLVsgw6/zOfImNlARKn1FP7o0fTbj8ipNG
# xHBIutiRsWrhWM2f8pXdd3x2mbJCKKtl2s42g9KUJHEIiLni9ByoqIUul4GblLQi
# gO0ugh7bWRLDm0CdY9rNLqyA3ahe8WlxVWkxyrQLjH8ItI17RdySaYayX3PhRSC4
# Am1/7mATwZWwSD+B7eMcZNhpn8zJ+6MTyE6YoEBSRVrs0zFFIHUR08Wk0ikSf+lI
# e5Iv6RY3/bFAEloMU+vUBfSouCReZwSLo8WdrDlPXtR0gicDnytO7eZ5827NS2x7
# gCBibESYkOh1/w1tVxTpV2Na3PR7nxYVlPu1JPoRZCbH86gc96UTvuWiOruWmyOE
# MLOGGniR+x+zPF/2DaGgK2W1eEJfo2qyrBNPvF7wuAyQfiFXLwvWHamoYtPZo0LH
# uH8X3n9C+xN4YaNjt2ywzOr+tKyEVAotnyU9vyEVOaIYMk3IeBrmFnn0gbKeTTyY
# eEEUz/Qwt4HOUBCrW602NCmvO1nm+/80nLy5r0AZvCQxaQ4wgga5MIIEoaADAgEC
# AhEA5/9pxzs1zkuRJth0fGilhzANBgkqhkiG9w0BAQwFADCBgDELMAkGA1UEBhMC
# UEwxIjAgBgNVBAoTGVVuaXpldG8gVGVjaG5vbG9naWVzIFMuQS4xJzAlBgNVBAsT
# HkNlcnR1bSBDZXJ0aWZpY2F0aW9uIEF1dGhvcml0eTEkMCIGA1UEAxMbQ2VydHVt
# IFRydXN0ZWQgTmV0d29yayBDQSAyMB4XDTIxMDUxOTA1MzIwN1oXDTM2MDUxODA1
# MzIwN1owVjELMAkGA1UEBhMCUEwxITAfBgNVBAoTGEFzc2VjbyBEYXRhIFN5c3Rl
# bXMgUy5BLjEkMCIGA1UEAxMbQ2VydHVtIFRpbWVzdGFtcGluZyAyMDIxIENBMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA6RIfBDXtuV16xaaVQb6KZX9O
# d9FtJXXTZo7b+GEof3+3g0ChWiKnO7R4+6MfrvLyLCWZa6GpFHjEt4t0/GiUQvnk
# LOBRdBqr5DOvlmTvJJs2X8ZmWgWJjC7PBZLYBWAs8sJl3kNXxBMX5XntjqWx1ZOu
# uXl0R4x+zGGSMzZ45dpvB8vLpQfZkfMC/1tL9KYyjU+htLH68dZJPtzhqLBVG+8l
# jZ1ZFilOKksS79epCeqFSeAUm2eMTGpOiS3gfLM6yvb8Bg6bxg5yglDGC9zbr4sB
# 9ceIGRtCQF1N8dqTgM/dSViiUgJkcv5dLNJeWxGCqJYPgzKlYZTgDXfGIeZpEFmj
# BLwURP5ABsyKoFocMzdjrCiFbTvJn+bD1kq78qZUgAQGGtd6zGJ88H4NPJ5Y2R4I
# argiWAmv8RyvWnHr/VA+2PrrK9eXe5q7M88YRdSTq9TKbqdnITUgZcjjm4ZUjteq
# 8K331a4P0s2in0p3UubMEYa/G5w6jSWPUzchGLwWKYBfeSu6dIOC4LkeAPvmdZxS
# B1lWOb9HzVWZoM8Q/blaP4LWt6JxjkI9yQsYGMdCqwl7uMnPUIlcExS1mzXRxUow
# Qref/EPaS7kYVaHHQrp4XB7nTEtQhkP0Z9Puz/n8zIFnUSnxDof4Yy650PAXSYmK
# 2TcbyDoTNmmt8xAxzcMCAwEAAaOCAVUwggFRMA8GA1UdEwEB/wQFMAMBAf8wHQYD
# VR0OBBYEFL5UAi+/QGxzQ86sCSVOnkNEGu7gMB8GA1UdIwQYMBaAFLahVDkCw6A/
# joq8+tT4HKbROg79MA4GA1UdDwEB/wQEAwIBBjATBgNVHSUEDDAKBggrBgEFBQcD
# CDAwBgNVHR8EKTAnMCWgI6Ahhh9odHRwOi8vY3JsLmNlcnR1bS5wbC9jdG5jYTIu
# Y3JsMGwGCCsGAQUFBwEBBGAwXjAoBggrBgEFBQcwAYYcaHR0cDovL3N1YmNhLm9j
# c3AtY2VydHVtLmNvbTAyBggrBgEFBQcwAoYmaHR0cDovL3JlcG9zaXRvcnkuY2Vy
# dHVtLnBsL2N0bmNhMi5jZXIwOQYDVR0gBDIwMDAuBgRVHSAAMCYwJAYIKwYBBQUH
# AgEWGGh0dHA6Ly93d3cuY2VydHVtLnBsL0NQUzANBgkqhkiG9w0BAQwFAAOCAgEA
# uJNZd8lMFf2UBwigp3qgLPBBk58BFCS3Q6aJDf3TISoytK0eal/JyCB88aUEd0wM
# NiEcNVMbK9j5Yht2whaknUE1G32k6uld7wcxHmw67vUBY6pSp8QhdodY4SzRRaZW
# zyYlviUpyU4dXyhKhHSncYJfa1U75cXxCe3sTp9uTBm3f8Bj8LkpjMUSVTtMJ6oE
# u5JqCYzRfc6nnoRUgwz/GVZFoOBGdrSEtDN7mZgcka/tS5MI47fALVvN5lZ2U8k7
# Dm/hTX8CWOw0uBZloZEW4HB0Xra3qE4qzzq/6M8gyoU/DE0k3+i7bYOrOk/7tPJg
# 1sOhytOGUQ30PbG++0FfJioDuOFhj99b151SqFlSaRQYz74y/P2XJP+cF19oqozm
# i0rRTkfyEJIvhIZ+M5XIFZttmVQgTxfpfJwMFFEoQrSrklOxpmSygppsUDJEoliC
# 05vBLVQ+gMZyYaKvBJ4YxBMlKH5ZHkRdloRYlUDplk8GUa+OCMVhpDSQurU6K1ua
# 5dmZftnvSSz2H96UrQDzA6DyiI1V3ejVtvn2azVAXg6NnjmuRZ+wa7Pxy0H3+V4K
# 4rOTHlG3VYA6xfLsTunCz72T6Ot4+tkrDYOeaU1pPX1CBfYj6EW2+ELq46GP8KCN
# UQDirWLU4nOmgCat7vN0SD6RlwUiSsMeCiQDmZwgwrUwggbAMIIEqKADAgECAhA/
# LwafXGuInpplxVMGdJYVMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlBMMSEw
# HwYDVQQKExhBc3NlY28gRGF0YSBTeXN0ZW1zIFMuQS4xJDAiBgNVBAMTG0NlcnR1
# bSBDb2RlIFNpZ25pbmcgMjAyMSBDQTAeFw0yMjA0MTQwOTIxMzhaFw0yNTA0MTMw
# OTIxMzdaMGYxCzAJBgNVBAYTAlBMMREwDwYDVQQHDAhXYXJzemF3YTEhMB8GA1UE
# CgwYUG93ZXJDbG91ZHMgTWljaGFsIEdhamRhMSEwHwYDVQQDDBhQb3dlckNsb3Vk
# cyBNaWNoYWwgR2FqZGEwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCe
# t+xkW4ECVL1DSj9xcwGDe3yTrXncKuO/UsHQjDG3wTKEMZJukC8gHXnPKlrtg9H3
# KtdG9L55A+x55VCl5Kpay4ATrxAUKds5B6Zu22aoe3tepXlaQk8PO+auvtT+r0cz
# JvTA7/w7Fvm5V9tJBTOyRX0ZsGypifov8sZFghL9pVQBqc+aAWx/Fsg8s1JSggx5
# iOSQlLvxxLb97mhpLDFxobgqndbjCquLMEV5cqY6+ODhVJBAEH4425UkMEVkX50g
# 42PFoHee/ZA4+5aMx8Rf9u1pA6yVqvcHoJwXjuou2r/x6ss+b9ScUyvUIcjXokyA
# tTtyrUOwE2jWDvznhbPmlthn2lzss6yAaTTeryTgcV0f8nhs2QFoa8TZMFi/fNjL
# 8orWspq/0Z1HwNNkD1Mh2B6JnD/unOy3fj77MBhMnWzSVTHH+ZYDGwYDsgmUbf8i
# D6MvEGzLwiyP83iL6rvcskSsKNocPB1LypTP+TvuGGIdmQheNfj1Y2ms66O/sO27
# +9JA4jWxNFFQQ6ZTITTl7fff91bozeKjI+CE7xbAtODm+Gsi17YrhgeUVk1YpVOK
# jBhnXjjMJ9Mh+CVWfxArEs/A0ZZHzXeACYmxaMso8hXU5FSCUTMt4MjxPFamz59e
# 0f98qKLkVfFioQqU/D/J2u4/+UFJegzZg93b6iD+1QIDAQABo4IBeDCCAXQwDAYD
# VR0TAQH/BAIwADA9BgNVHR8ENjA0MDKgMKAuhixodHRwOi8vY2NzY2EyMDIxLmNy
# bC5jZXJ0dW0ucGwvY2NzY2EyMDIxLmNybDBzBggrBgEFBQcBAQRnMGUwLAYIKwYB
# BQUHMAGGIGh0dHA6Ly9jY3NjYTIwMjEub2NzcC1jZXJ0dW0uY29tMDUGCCsGAQUF
# BzAChilodHRwOi8vcmVwb3NpdG9yeS5jZXJ0dW0ucGwvY2NzY2EyMDIxLmNlcjAf
# BgNVHSMEGDAWgBTddF1MANt7n6B0yrFu9zzAMsBwzTAdBgNVHQ4EFgQUdcAoCYdl
# DBKMfqix4T3EIEAB5TEwSwYDVR0gBEQwQjAIBgZngQwBBAEwNgYLKoRoAYb2dwIF
# AQQwJzAlBggrBgEFBQcCARYZaHR0cHM6Ly93d3cuY2VydHVtLnBsL0NQUzATBgNV
# HSUEDDAKBggrBgEFBQcDAzAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcNAQELBQAD
# ggIBABXxKsBFLjKAz9CvVM2Qv6+4MyUAJDT3Ws2i+9qHUsdwGkrdXvIO7z+FXxhP
# I04XwcZNNcjhyQY6MIOxDWIVcJ3QhO0LScuZCeO43ZSLMrkNyXBbaHCyWIGU1QlD
# m3Ah8uo0HMXcEDAmaUB1c2Ak4ARfTunTlSP+4cd7c3MvmZ4tOQcHKTKFd0RAFpa9
# ynEd/DoAXrACdDPAc3clEzPfbw5jJGwbs9Nysk5SyiNKCQtMAnYnqGRfRkLjb73t
# NPH1M7UnUqnEVAqs+t64a7QCIUSDSIITGEB4bhlFUIuwAhekZj7yPIrPwv2TY8q7
# ClyN4bOTSphh/JGTBlW9dgSPF5bQCeW7s3jAggLnz4xg3eojZuSPhXYdL5Ax0Yya
# ZoXq3K2CvP0/SYZh0xTp75nNI60tV9DsopI/ymkBwfYFS77Kmelohst2BAjCRmJN
# LDZJK66vUXlarANhjgL5B/WUyxIuPNaf6PC9AzWz1GHxNbeNUCZgjD9wlpILDH5g
# sYdimAhTvgftUyMKvyL42rKVpGZW9L8/v9/+vrkf+6fxufHxgksscAH0Qqofx++Y
# lq4ZQ2PzprI9YBNLkmwuSQhf+IdT/jwu2cYUN9buOZJo39RtFsVLQMGfFuliN3SA
# VtfFN+2f4wsRtp3q7BllwC4ke4KdtkedLNUFPUj10aBGkSacMYIHIjCCBx4CAQEw
# ajBWMQswCQYDVQQGEwJQTDEhMB8GA1UEChMYQXNzZWNvIERhdGEgU3lzdGVtcyBT
# LkEuMSQwIgYDVQQDExtDZXJ0dW0gQ29kZSBTaWduaW5nIDIwMjEgQ0ECED8vBp9c
# a4iemmXFUwZ0lhUwDQYJYIZIAWUDBAIBBQCggYQwGAYKKwYBBAGCNwIBDDEKMAig
# AoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgEL
# MQ4wDAYKKwYBBAGCNwIBFTAvBgkqhkiG9w0BCQQxIgQgpUpnQDL0t24IWRIbnPRS
# Em/kW5XJbl1/PtfpWdAJyxUwDQYJKoZIhvcNAQEBBQAEggIAmAJ98eFtd/TJPQO2
# zCdy7vf3qhvpky24ZaOCEJcsvsl59gh3/3pA0Wyu3iEyEDeD9s7zIGlbGv5mCe24
# lEBhiZmPVL0paiHc4vauLjnAIp1wIcmK6rrscpeUFmxG2JkHerxOb6gB/dy5JXZ1
# 8xDkn9Aovi9plMCeu6DQi0Ethu/7hNtcQIdoYJVKrTNsf0AQEVnVHmzNgEsMV+o0
# 0cqgL+qJxGvKjLhvXqQgy5bgDLJq7cklgSbScS30Av+dDpe3BQyCjZx7TRgUJnj0
# +fKwwjKW6h9+3bP3JpDSUhuSQicGB82i1N/CujFwdKZzVfbZet9PlxA9iLQj/0ZF
# NhdTfzddw+VixhPEXoNq4cHNA58U8N7p/vgtvdgtr+mHb6ojqWrsFqcd/E7NuVye
# lc8eKe6OEJeogdPbw2IN2Dn9pTmGYf2H84UHFWhVgQXvscZyJwh7FGSTo14RytlH
# TmmwWEK1dw8X2jaSq9zEp80fqy5uLNmCfY4+mONA+QlyRZAN5Aj2USmJt5yPixfo
# m0jDDdtijftujkKk3MRx5kzXa6PqzwOUaGXTbTtXqtRTU9kmASbIZ9zEf9tvjWRK
# 59KJ6naSR2TIDJYFrETTdNXX+6PVpCyYWlzfCzN/x76+S+EFY5H0K1b4SrzOxUcP
# OMDF9tOOe+wO2dP9wmLK9Cq/tomhggQCMIID/gYJKoZIhvcNAQkGMYID7zCCA+sC
# AQEwajBWMQswCQYDVQQGEwJQTDEhMB8GA1UEChMYQXNzZWNvIERhdGEgU3lzdGVt
# cyBTLkEuMSQwIgYDVQQDExtDZXJ0dW0gVGltZXN0YW1waW5nIDIwMjEgQ0ECEAnF
# zPi7Zn1xN6rBWYAGyzEwDQYJYIZIAWUDBAICBQCgggFWMBoGCSqGSIb3DQEJAzEN
# BgsqhkiG9w0BCRABBDAcBgkqhkiG9w0BCQUxDxcNMjMxMjEzMTExMzM1WjA3Bgsq
# hkiG9w0BCRACLzEoMCYwJDAiBCDqlUux0EC0MUBI2GWfj2FdiHQszOBnkuBWAk1L
# ADrTHDA/BgkqhkiG9w0BCQQxMgQw8nmfo/i/yHHjJ92vfbOipnOHWVt1pcRcuq+2
# fzd3BJelqUrvqVR3N74DWcaiHtF/MIGfBgsqhkiG9w0BCRACDDGBjzCBjDCBiTCB
# hgQUD0+4VR7/2Pbef2cmtDwT0Gql53cwbjBapFgwVjELMAkGA1UEBhMCUEwxITAf
# BgNVBAoTGEFzc2VjbyBEYXRhIFN5c3RlbXMgUy5BLjEkMCIGA1UEAxMbQ2VydHVt
# IFRpbWVzdGFtcGluZyAyMDIxIENBAhAJxcz4u2Z9cTeqwVmABssxMA0GCSqGSIb3
# DQEBAQUABIICAFjx6e0G9DPSHme1+a3VVkLl+EF0FQfz4aUTZnHPNPFCgYTioHKT
# 5aeTM1J8ILXd8WKxOqYgh6EWnNOH5v4mB3hmaNjJdFhu9MBFFffSRo9NvMYjo1mT
# ns8JUeH60AxKUMhotUc2+GoZ3wgBZFJNAitw84YmaOpeBiul0Ucz8O7nvBPFdU9L
# DbkYb1WoDdoBcGSrkmVrK3TEn+IRZbyfM9f8s3Bw1h9/iZw391/sFZsoXgtugjzO
# zKeCFpd5NBPSij3JonzzndZITJ30FkGdJLXAJas9GDX5ZiHnxNQ+WDIhNmeD44XR
# XG3PN8oVxmt+I91d0tMPBTzj7z7Om0ENOcsv1rMLZ+887tqLWMrHiRTqk4B2Iorb
# tHhyFTnmNBV5d4R7C/VjKxDjDVyexr1u+s0ew9TAbgJ/GHhYjwxrOvvbyCmv+IHG
# +/KXRjIBkwBb8eRHyPn7dStnbh/1iMX3BRJnejw6G4VZR1D4sD2BZ8IOPKCZQQ4j
# AH3rM3i7v1teRVChr4xJlLpHc960NgBVAgtvRq1GN64l/Gt7ILg/l4rSt6mEet18
# 4loVHhw4Q/vjO0LH+GOu7RkXWgWKE/5t+D2K80AMFc3riHJwKcvJp+8iMsHNXAY5
# PG58pt31tgrQRhEbAIzWqxniXdO7xo3emjweUdIvULWXzMR3uXsM5PNp
# SIG # End signature block
