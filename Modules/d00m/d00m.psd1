#
# Module manifest for module 'd00m'
#
# Generated by: Alex Sparkman
#
# Generated on: 10/5/2016
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'd00m'

# Version number of this module.
ModuleVersion = '1.3'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'f5413d80-4019-4a34-9698-e96aab0fb28b'

# Author of this module
Author = 'Alex Sparkman'

# Company or vendor of this module
CompanyName = 'd00m'

# Copyright statement for this module
Copyright = '(c) 2016 Alex Sparkman. All rights reserved.'

# Description of the functionality provided by this module
Description = 'd00m PowerShell modules!'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

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
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Get-d00mExcuse',
                    'Get-d00mHardwareReport',
                    'Get-d00mSoftwareReport', 
                    'Get-d00mServiceReport',
                    'New-d00mColorFlood',     
                    'Get-d00mSayThings',
                    'Add-d00mChocolateyPackageSource', 
                    'New-d00mPassword',
                    'New-d00mShortcutCheatSheet', 
                    'Get-d00mDiskSpace',
                    'Get-d00mModuleUpdate',   
                    'Set-d00mPowerShellDefaultShell',
                    'Get-d00mArchitecture',   
                    'ConvertTo-d00mEncryptedString',
                    'ConvertFrom-d00mEncryptedString', 
                    'Connect-d00mVm',
                    'Enable-d00mRdp',         
                    'Disable-d00mRdp',
                    'Get-d00mEventLogReport', 
                    'Get-d00mWinsatScore'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-d00mExcuse',
                  'Get-d00mHardwareReport',
                  'Get-d00mSoftwareReport', 
                  'Get-d00mServiceReport',
                  'New-d00mColorFlood',     
                  'Get-d00mSayThings',
                  'Add-d00mChocolateyPackageSource', 
                  'New-d00mPassword',
                  'New-d00mShortcutCheatSheet', 
                  'Get-d00mDiskSpace',
                  'Get-d00mModuleUpdate',   
                  'Set-d00mPowerShellDefaultShell',
                  'Get-d00mArchitecture',   
                  'ConvertTo-d00mEncryptedString',
                  'ConvertFrom-d00mEncryptedString', 
                  'Connect-d00mVm',
                  'Enable-d00mRdp',         
                  'Disable-d00mRdp',
                  'Get-d00mEventLogReport', 
                  'Get-d00mWinsatScore'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        # Tags = @()

        # A URL to the license for this module.
        # LicenseUri = ''

        # A URL to the main website for this project.
        # ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        # ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

