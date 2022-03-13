cls
;
if "%~1"=="" (
  echo WRONG PARAM
  goto _end_batch
)
;
call run_copy_translation.bat %1 AuthManager
call run_copy_translation.bat %1 Backup
call run_copy_translation.bat %1 BackupRestoreConfirmation
call run_copy_translation.bat %1 Bluetooth
call run_copy_translation.bat %1 Browser
call run_copy_translation.bat %1 BuiltInPrintService
call run_copy_translation.bat %1 Calculator
call run_copy_translation.bat %1 Calendar
call run_copy_translation.bat %1 CalendarProvider
call run_copy_translation.bat %1 CertInstaller
call run_copy_translation.bat %1 CleanMaster
call run_copy_translation.bat %1 CloudBackup
call run_copy_translation.bat %1 CloudService
call run_copy_translation.bat %1 com.miui.qr
call run_copy_translation.bat %1 com.xiaomi.macro
call run_copy_translation.bat %1 Contacts
call run_copy_translation.bat %1 ContactsProvider
call run_copy_translation.bat %1 DeskClock
call run_copy_translation.bat %1 DownloadProvider
call run_copy_translation.bat %1 DownloadProviderUi
call run_copy_translation.bat %1 Email
call run_copy_translation.bat %1 EmergencyInfo
call run_copy_translation.bat %1 ExternalStorageProvider
call run_copy_translation.bat %1 FileExplorer
call run_copy_translation.bat %1 FindDevice
call run_copy_translation.bat %1 FM
call run_copy_translation.bat %1 framework-res
call run_copy_translation.bat %1 GuardProvider
call run_copy_translation.bat %1 Health
call run_copy_translation.bat %1 HTMLViewer
call run_copy_translation.bat %1 imssettings
call run_copy_translation.bat %1 InCallUI
call run_copy_translation.bat %1 InProcessTethering
call run_copy_translation.bat %1 Joyose
call run_copy_translation.bat %1 MaintenanceMode
call run_copy_translation.bat %1 ManagedProvisioning
call run_copy_translation.bat %1 MediaFeature
call run_copy_translation.bat %1 MediaProvider
call run_copy_translation.bat %1 MiBrowserGlobal
call run_copy_translation.bat %1 MiCloudSync
call run_copy_translation.bat %1 MiDrive
call run_copy_translation.bat %1 MiFitness
call run_copy_translation.bat %1 MiGalleryLockscreen
call run_copy_translation.bat %1 MiLinkService
call run_copy_translation.bat %1 MiMover
call run_copy_translation.bat %1 MiRadio
call run_copy_translation.bat %1 Mirror
call run_copy_translation.bat %1 MiService
call run_copy_translation.bat %1 MiSettings
call run_copy_translation.bat %1 MiShare
call run_copy_translation.bat %1 MiSound
call run_copy_translation.bat %1 MiSubScreenUi
call run_copy_translation.bat %1 MiuiAod
call run_copy_translation.bat %1 MiuiBiometric
call run_copy_translation.bat %1 MiuiBluetooth
call run_copy_translation.bat %1 MiuiBugReport
call run_copy_translation.bat %1 MiuiCamera
call run_copy_translation.bat %1 MiuiCompass
call run_copy_translation.bat %1 MiuiContentCatcher
call run_copy_translation.bat %1 MiuiExtraPhoto
call run_copy_translation.bat %1 MiuiFreeformService
call run_copy_translation.bat %1 MiuiFrequentPhrase
call run_copy_translation.bat %1 MiuiGallery
call run_copy_translation.bat %1 MiuiHome
call run_copy_translation.bat %1 MiuiPackageInstaller
call run_copy_translation.bat %1 MiuiScanner
call run_copy_translation.bat %1 MiuiScreenRecorder
call run_copy_translation.bat %1 MiuiScreenshot
call run_copy_translation.bat %1 MiuiSystemUI
call run_copy_translation.bat %1 MiuiSystemUIPlugin
call run_copy_translation.bat %1 MiuiVideoGlobal
call run_copy_translation.bat %1 MiuiWallpaper
call run_copy_translation.bat %1 MiuixEditor
call run_copy_translation.bat %1 Mms
call run_copy_translation.bat %1 MtpService
call run_copy_translation.bat %1 Music
call run_copy_translation.bat %1 MusicFX
call run_copy_translation.bat %1 Notes
call run_copy_translation.bat %1 NotificationCenter
call run_copy_translation.bat %1 NQNfcNci
call run_copy_translation.bat %1 PaymentService
call run_copy_translation.bat %1 PersonalAssistant
call run_copy_translation.bat %1 PowerChecker
call run_copy_translation.bat %1 PowerKeeper
call run_copy_translation.bat %1 PrintSpooler
call run_copy_translation.bat %1 Provision
call run_copy_translation.bat %1 QuickSearchBox
call run_copy_translation.bat %1 SecurityAdd
call run_copy_translation.bat %1 SecurityCenter
call run_copy_translation.bat %1 SecurityCoreAdd
call run_copy_translation.bat %1 ServiceConnectivityResources
call run_copy_translation.bat %1 ServiceWifiResources
call run_copy_translation.bat %1 Settings
call run_copy_translation.bat %1 SettingsProvider
call run_copy_translation.bat %1 Shell
call run_copy_translation.bat %1 SmartHomePlus
call run_copy_translation.bat %1 SoundPicker
call run_copy_translation.bat %1 SoundRecorder
call run_copy_translation.bat %1 Tag
call run_copy_translation.bat %1 Telecom
call run_copy_translation.bat %1 TelephonyProvider
call run_copy_translation.bat %1 TeleService
call run_copy_translation.bat %1 ThemeManager
call run_copy_translation.bat %1 TouchAssistant
call run_copy_translation.bat %1 Traceur
call run_copy_translation.bat %1 Updater
call run_copy_translation.bat %1 VpnDialogs
call run_copy_translation.bat %1 VsimCore
call run_copy_translation.bat %1 WallpaperCropper
call run_copy_translation.bat %1 Weather
call run_copy_translation.bat %1 WeatherProvider
call run_copy_translation.bat %1 WfdService
call run_copy_translation.bat %1 WifiResCommon
call run_copy_translation.bat %1 wps-lite
call run_copy_translation.bat %1 XiaomiAccount
call run_copy_translation.bat %1 XiaomiEUExt
call run_copy_translation.bat %1 XiaomiServiceFramework
call run_copy_translation.bat %1 XiaomiSimActivateService

;
call run_copy_translation.bat %1 framework-ext-res -rRU
call run_copy_translation.bat %1 miui -rRU
call run_copy_translation.bat %1 miuisystem -rRU

:_end_batch
