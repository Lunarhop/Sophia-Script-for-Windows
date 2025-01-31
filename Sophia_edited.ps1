Clear-Host
$Host.UI.RawUI.WindowTitle = 'Windows Sophia Script | Copyright farag2 & Inestic, 2015 to 2021'
Remove-Module -Name Sophia -Force -ErrorAction Ignore
Import-Module -Name $PSScriptRoot\Manifest\Sophia.psd1 -PassThru -Force
Import-LocalizedData -BindingVariable Global:Localization -FileName Sophia -BaseDirectory $PSScriptRoot\Localizations

#region Protection

Checkings -Warning
CreateRestorePoint

#endregion Protection

#region Privacy & Telemetry

DiagTrackService -Disable
DiagnosticDataLevel -Default
ErrorReporting -Disable
FeedbackFrequency -Never
SigninInfo -Disable
LanguageListAccess -Disable
AdvertisingID -Disable
WindowsTips -Disable
SettingsSuggestedContent -Hide
AppsSilentInstalling -Disable
WhatsNewInWindows -Disable
TailoredExperiences -Disable
BingSearch -Disable

#endregion Privacy & Telemetry

#region UI & Personalization

CheckBoxes -Enable
HiddenItems -Enable
FileExtensions -Show
MergeConflicts -Show
OpenFileExplorerTo -ThisPC
FileExplorerCompactMode -Disable
OneDriveFileExplorerAd -Hide
SnapAssistFlyout -Enable
SnapAssist -Enable
FileTransferDialog -Detailed
FileExplorerRibbon -Expanded
RecycleBinDeleteConfirmation -Enable
QuickAccessRecentFiles -Hide
QuickAccessFrequentFolders -Hide
TaskbarSearch -Hide
TaskViewButton -Hide
TaskbarWidgets -Hide
TaskbarChat -Hide
TaskbarSize -Default
ControlPanelView -LargeIcons
WindowsColorMode -Dark
AppColorMode -Dark
FirstLogonAnimation -Disable
JPEGWallpapersQuality -Max
TaskManagerWindow -Expanded
RestartNotification -Show
ShortcutsSuffix -Disable
PrtScnSnippingTool -Enable
AppsLanguageSwitch -Disable
AeroShaking -Enable
NotificationAreaIcons
UnpinTaskbarShortcuts -Shortcuts Edge, Store

#endregion UI & Personalization

#region OneDrive

OneDrive -Uninstall

#endregion OneDrive

#region System

StorageSense -Enable
StorageSenseTempFiles -Enable
StorageSenseFrequency -Month
Hibernation -Disable
Win32LongPathLimit -Disable
BSoDStopError -Enable
AdminApprovalMode -Never
MappedDrivesAppElevatedAccess -Enable
DeliveryOptimization -Disable
WaitNetworkStartup -Disable
WindowsManageDefaultPrinter -Disable
WindowsFeatures -Disable
WindowsCapabilities -Uninstall
UpdateMicrosoftProducts -Enable
PowerPlan -High
LatestInstalled.NET -Enable
NetworkAdaptersSavePower -Disable
IPv6Component -Disable
InputMethod -English
SetUserShellFolderLocation -Root
WinPrtScrFolder -Desktop
RecommendedTroubleshooting -Automatic
FoldersLaunchSeparateProcess -Enable
ReservedStorage -Disable
F1HelpPage -Disable
NumLock -Enable
StickyShift -Disable
Autoplay -Disable
ThumbnailCacheRemoval -Disable
SaveRestartableApps -Enable
NetworkDiscovery -Enable
ActiveHours -Automatically
RestartDeviceAfterUpdate -Enable
DefaultTerminalApp -WindowsTerminal

#endregion System

#region WSL

WSL

#endregion WSL

#region Start menu

RecentlyAddedApps -Show
RunPowerShellShortcut -Elevated

#endregion Start menu

#region UWP apps

HEIF -Install
CortanaAutostart -Disable
TeamsAutostart -Disable
UninstallUWPApps
CheckUWPAppsUpdates

#endregion UWP apps

#region Gaming

XboxGameTips -Disable
GPUScheduling -Enable
SetAppGraphicsPerformance

#endregion Gaming

#region Scheduled tasks

CleanupTask -Register
SoftwareDistributionTask -Register
TempTask -Register

#endregion Scheduled tasks

#region Microsoft Defender & Security

NetworkProtection -Enable
PUAppsDetection -Enable
DefenderSandbox -Enable
AuditProcess -Enable
CommandLineProcessAudit -Enable
EventViewerCustomView -Enable
PowerShellModulesLogging -Enable
PowerShellScriptsLogging -Enable
AppsSmartScreen -Disable
SaveZoneInformation -Disable
DNSoverHTTPS -Enable
DismissMSAccount
DismissSmartScreenFilter

#endregion Microsoft Defender & Security

#region Context menu

MSIExtractContext -Show
CABInstallContext -Show
RunAsDifferentUserContext -Show
CastToDeviceContext -Show
ShareContext -Show
EditWithPhotosContext -Hide
CreateANewVideoContext -Hide
PrintCMDContext -Hide
IncludeInLibraryContext -Hide
SendToContext -Show
BitLockerContext -Hide
CompressedFolderNewContext -Hide
MultipleInvokeContext -Enable

#endregion Context menu

RefreshEnvironment
Errors