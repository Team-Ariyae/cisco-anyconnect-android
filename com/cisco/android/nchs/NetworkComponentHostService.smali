.class public Lcom/cisco/android/nchs/NetworkComponentHostService;
.super Landroid/app/Service;
.source "NetworkComponentHostService.java"

# interfaces
.implements Lcom/cisco/android/nchs/IComponentPropertyManager;


# static fields
.field public static final ACTION_CERT_IMPORT_RESULT:Ljava/lang/String; = "com.cisco.android.nchs.ACTION_CERT_IMPORT_RESULT"

.field private static final BOOT_FILE_NAME:Ljava/lang/String; = "launchatboot"

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final CERT_TIMEOUT_MS:I = 0x1d4c0

.field private static final CERT_TIMEOUT_MSG:I = 0x1

.field private static final CODE_SIGNING_DER_ASSET:Ljava/lang/String; = "codeSign.der"

.field private static final DATA_DIRECTORY_NAME:Ljava/lang/String; = "data"

.field public static final DEFAULT_BOOTLAUNCH:Z = false

.field public static final DEFAULT_HIDEICON:Z = true

.field private static final DEFAULT_SEED:Ljava/lang/String; = "aNyCoNN_c3r7_300d"

.field private static final DEFUALT_SEED_USED:Ljava/lang/String; = "default_seed_used"

.field private static final ENTITY_NAME:Ljava/lang/String; = "NetworkComponentHostService"

.field public static final EXTRA_CERT_IMPORT_RESULT_CODE:Ljava/lang/String; = "success"

.field private static final MANIFEST_FILE_NAME:Ljava/lang/String; = "services.xml"

.field private static final METADATA_FILE_NAME:Ljava/lang/String; = "data.dat"

.field private static final NCHS_OP_TIMEOUT_MILLISECONDS:J = 0x11170L

.field private static final NCHS_OP_TIMEOUT_PER_KB:I = 0xf

.field public static final NCHS_PROPERTY_KEY_BOOTLAUNCH:Ljava/lang/String; = "BootLaunch"

.field public static final NCHS_PROPERTY_KEY_HIDEICON:Ljava/lang/String; = "HideIcon"

.field private static final NCHS_STATE_NOTIFICATION_ID:I = 0x115c

.field private static final NOTIFICATION_DEBOUNCE_TIMEOUT_MS:I = 0x5dc

.field private static final POST_NOTIFICATION_MSG:I = 0x2

.field private static final ROOT_UID:I = 0x0

.field private static final SIGNALLING_SERVICE_WAIT_INTERVAL_MILLISECONDS:I = 0x7d0

.field private static final SOCKET_SERVER_SHUTDOWN_MILLIS:I = 0x1388

.field public static final STRING_FALSE:Ljava/lang/String;

.field public static final STRING_TRUE:Ljava/lang/String;

.field private static final WAIT_FOR_SIGNALLING_SERVICE_TIMEOUT_MILLISECONDS:I = 0x1f40

.field private static final WAIT_SERVER_START_TIMEOUT_MS:I = 0x3e8


# instance fields
.field private final mAgentServiceConn:Landroid/content/ServiceConnection;

.field private mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

.field private final mComponents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/cisco/android/nchs/ComponentManifest;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugMode:Z

.field private mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

.field private mDisplayNotificationConfig:Z

.field private mGlobalPackageEventReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIPCServers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/ipc/IIPCServer;",
            ">;"
        }
    .end annotation
.end field

.field private mImportClientCertCallback:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

.field private final mInProcRequestResult:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIpcServerCB:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;

.field private mNCHSPackageEventReceiver:Landroid/content/BroadcastReceiver;

.field private mNCSS:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;

.field private final mNotificationPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationVisible:Z

.field private final mOutProcRequestLock:Ljava/lang/Object;

.field private final mOutProcRequestResult:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesLatch:Ljava/util/concurrent/CountDownLatch;

.field private mShutdownInProgress:Z

.field private final mShutdownListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignallingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/cisco/android/nchs/ComponentManifest$ServiceId;",
            ">;"
        }
    .end annotation
.end field

.field private mStateNotification:Landroid/app/Notification;

.field private mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCertMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/CertificateManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmComponents(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevMgr(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/support/DeviceInfoManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIPCServers(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIPCServers:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/IImportClientCertCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mImportClientCertCallback:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNCSS(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCSS:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServicesLatch(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mServicesLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdownInProgress(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownInProgress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutdownListenerList(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateNotification(Lcom/cisco/android/nchs/NetworkComponentHostService;)Landroid/app/Notification;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mStateNotification:Landroid/app/Notification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVpnAgentService(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImportClientCertCallback(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mImportClientCertCallback:Lcom/cisco/android/nchs/aidl/IImportClientCertCB;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNotificationVisible(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVpnAgentService(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindVpnAgent(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->bindVpnAgent()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteDirectory(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->deleteDirectory(Ljava/io/File;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAllComponentInfo(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getAllComponentInfo(Z)[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFullComponentList(Lcom/cisco/android/nchs/NetworkComponentHostService;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getFullComponentList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetManifestForPackage(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNCHSOverallState(Lcom/cisco/android/nchs/NetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNCHSOverallState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNCHSState(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNCHSState(Landroid/net/Credentials;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNativeServiceState(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNativeServiceState(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNetworkComponentProperty(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mimportClientCertFromKeyChain(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->importClientCertFromKeyChain(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitiateShutdown(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->initiateShutdown(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitiateShutdown(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->initiateShutdown(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minstallNetworkComponentFiles(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->installNetworkComponentFiles(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misArchiveTrusted(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isArchiveTrusted(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBinderRequestInProc(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isBinderRequestInProc()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCallerAuthorizedForPackage(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isCallerAuthorizedForPackage(Landroid/net/Credentials;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceInfoAvailable(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isDeviceInfoAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misDeviceInfoAvailable(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isDeviceInfoAvailable(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNativeServiceRunning(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNetworkComponentInstalled(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNetworkComponentInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mparseComponentManifest(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->parseComponentManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mregisterListener(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->registerListener(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDisplayNotifications(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setDisplayNotifications(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetDisplayNotifications(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setDisplayNotifications(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetNetworkComponentProperty(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetOpResult(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setOpResult(Ljava/lang/Object;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUserPreference(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->setUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshouldDisplayIcon(Lcom/cisco/android/nchs/NetworkComponentHostService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->shouldDisplayIcon()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartComponent(Lcom/cisco/android/nchs/NetworkComponentHostService;Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startComponent(Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartNativeService(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstopNativeService(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$muninstallNetworkComponent(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->uninstallNetworkComponent(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munregisterListener(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/cisco/android/nchs/NetworkComponentHostService;->unregisterListener(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateComponentState(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 154
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cisco/android/nchs/NetworkComponentHostService;->STRING_FALSE:Ljava/lang/String;

    .line 155
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cisco/android/nchs/NetworkComponentHostService;->STRING_TRUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 171
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownListenerList:Landroid/os/RemoteCallbackList;

    .line 181
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$1;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$1;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    const/4 v0, 0x0

    .line 218
    iput-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDisplayNotificationConfig:Z

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIPCServers:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestLock:Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    .line 228
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mInProcRequestResult:Ljava/util/LinkedList;

    .line 230
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    .line 233
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$2;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$2;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mAgentServiceConn:Landroid/content/ServiceConnection;

    .line 347
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$3;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$3;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;

    .line 484
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$4;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$4;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCSS:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;

    .line 3235
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$23;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$23;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIpcServerCB:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

    return-void
.end method

.method public static final GetLaunchAtBootup(Ljava/lang/String;)Z
    .locals 2

    .line 3858
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "launchatboot"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3859
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private bindVpnAgent()Z
    .locals 9

    const-string v0, "Binding to VpnAgentService: "

    .line 3246
    monitor-enter p0

    .line 3248
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3250
    monitor-exit p0

    return v2

    .line 3253
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 3254
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NetworkComponentHostService"

    const-string v2, "bindServices can\'t be invoked on main thread."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    monitor-exit p0

    return v4

    .line 3258
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/cisco/anyconnect/vpn/agent/VpnAgentService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3259
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mAgentServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1, v3, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 3260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3263
    :goto_0
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mVpnAgentService:Lcom/cisco/anyconnect/vpn/agent/IVpnAgentService;

    if-nez v3, :cond_3

    .line 3264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x1388

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    .line 3265
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NetworkComponentHostService"

    const-string v2, "timed out waiting to bind to VPN Agent Service"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    :cond_2
    const-wide/16 v5, 0x1f4

    .line 3270
    :try_start_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3273
    :catch_0
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NetworkComponentHostService"

    const-string v2, "bind NCHS interrupted."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3274
    monitor-exit p0

    return v4

    .line 3278
    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    .line 3279
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private calculateBootLaunch()Z
    .locals 2

    const-string v0, "BootLaunch"

    const/4 v1, 0x0

    .line 3906
    invoke-direct {p0, v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getBooleanPropertySummary(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final calculateConfigDisplayIcon()Z
    .locals 2

    const-string v0, "HideIcon"

    const/4 v1, 0x1

    .line 4086
    invoke-direct {p0, v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getBooleanPropertySummary(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method private componentAlreadyInComponentList(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/aidl/NativeComponentInfo;",
            ">;)Z"
        }
    .end annotation

    .line 2875
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    .line 2877
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized deleteDirectory(Ljava/io/File;I)Z
    .locals 5

    monitor-enter p0

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    .line 1455
    monitor-exit p0

    return v1

    .line 1458
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1460
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    .line 1461
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1463
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1465
    aget-object v3, v0, v2

    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, v3, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->deleteDirectory(Ljava/io/File;I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 1467
    monitor-exit p0

    return v1

    .line 1472
    :cond_1
    :try_start_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 1474
    monitor-exit p0

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private getAllComponentInfo(Z)[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .locals 2

    .line 2756
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$20;

    invoke-direct {v0, p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService$20;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)V

    const-string v1, "getAllComponentInfo"

    .line 2776
    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    return-object p1
.end method

.method private getBooleanPropertySummary(Ljava/lang/String;Z)Z
    .locals 9

    .line 3810
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const-string v1, "="

    const-string v2, "getBooleanPropertySummary: "

    const-string v3, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 3812
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -- no components!"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 3817
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/android/nchs/ComponentManifest;

    .line 3819
    invoke-virtual {v4}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3820
    invoke-virtual {v4, p1}, Lcom/cisco/android/nchs/ComponentManifest;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 3825
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -- failed to get property for "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    :cond_2
    const-string v7, " for "

    if-eqz p2, :cond_3

    .line 3830
    sget-object v8, Lcom/cisco/android/nchs/NetworkComponentHostService;->STRING_FALSE:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_3

    .line 3832
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=true -- string="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_3
    if-nez p2, :cond_1

    .line 3837
    sget-object v5, Lcom/cisco/android/nchs/NetworkComponentHostService;->STRING_TRUE:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 3839
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=false -- string="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3844
    :cond_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -- all "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " components agree"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    xor-int/lit8 p1, p2, 0x1

    return p1
.end method

.method private getComponentInfoFromPackageManager()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 2786
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2787
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.android.nchs.COMPONENT_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2789
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getComponentServiceForPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;
    .locals 1

    .line 916
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/ComponentManifest;

    .line 918
    invoke-virtual {v0, p2}, Lcom/cisco/android/nchs/ComponentManifest;->getServiceByID(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDataDirectoryForPackage(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const-string v0, "Failed to make data directory executable"

    const-string v1, "NetworkComponentHostService"

    .line 871
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getInstallPathForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "data"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 875
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 877
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 899
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/cisco/android/nchs/io/FileUtils;->SetExecutable(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 903
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v2

    .line 883
    :cond_0
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Data directory already exists, but is not a directory.  Deleting..."

    invoke-static {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 890
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 899
    :try_start_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/cisco/android/nchs/io/FileUtils;->SetExecutable(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 903
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v3, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v2

    :catchall_0
    move-exception v3

    .line 899
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/cisco/android/nchs/io/FileUtils;->SetExecutable(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 903
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {v2, v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 905
    :goto_2
    throw v3
.end method

.method private getDataFileForPackage(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 860
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getDataDirectoryForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "data.dat"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getFullComponentList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/aidl/NativeComponentInfo;",
            ">;"
        }
    .end annotation

    .line 2840
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getInstalledComponentInfoList()Ljava/util/List;

    move-result-object v0

    .line 2843
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getComponentInfoFromPackageManager()Ljava/util/List;

    move-result-object v1

    .line 2846
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 2850
    invoke-direct {p0, v2, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->componentAlreadyInComponentList(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2854
    new-instance v3, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 2855
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    .line 2856
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f11020b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSState;Ljava/util/Map;Ljava/lang/String;)V

    .line 2860
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getInstallPathForPackage(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1251
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getInstalledComponentInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/aidl/NativeComponentInfo;",
            ">;"
        }
    .end annotation

    .line 2798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2800
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ComponentManifest;

    .line 2802
    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNativeComponentInfoForManifest(Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getLabelForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1261
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1264
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "NetworkComponentHostService"

    const-string v2, "label requested for package that isn\'t installed"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 1269
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1275
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 1278
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 1279
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;
    .locals 3

    .line 1295
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/ComponentManifest;

    .line 1297
    invoke-virtual {v1}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getManifestPathForPackage(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1313
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "services.xml"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNCHSOverallState()Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 3

    .line 3152
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3154
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    return-object v0

    .line 3157
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/cisco/android/nchs/aidl/NCHSState;

    const/4 v1, 0x0

    .line 3158
    :goto_0
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3160
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ComponentManifest;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3163
    :cond_1
    invoke-static {v0}, Lcom/cisco/android/nchs/aidl/NCHSState;->getMostImportantState([Lcom/cisco/android/nchs/aidl/NCHSState;)Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v0

    return-object v0
.end method

.method private getNCHSState(Landroid/net/Credentials;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 2

    if-nez p2, :cond_0

    .line 2899
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "NetworkComponentHostService"

    const-string p3, "stateParcel was null, returning error"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2900
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2903
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2904
    new-instance v1, Lcom/cisco/android/nchs/NetworkComponentHostService$21;

    invoke-direct {v1, p0, v0, p1, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService$21;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/content/pm/PackageManager;Landroid/net/Credentials;Z)V

    const-string p1, "getNCHSState"

    .line 2960
    invoke-direct {p0, v1, p1, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_4

    const/4 p3, 0x0

    .line 2962
    aget-object v0, p1, p3

    if-nez v0, :cond_1

    goto :goto_0

    .line 2966
    :cond_1
    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v0, v1, :cond_2

    .line 2968
    aget-object p1, p1, p3

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 2971
    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    .line 2973
    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-virtual {p2, v0}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->setState(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    .line 2976
    :cond_3
    aget-object p1, p1, p3

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2964
    :cond_4
    :goto_0
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private getNativeComponentInfoForManifest(Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NativeComponentInfo;
    .locals 8

    .line 2815
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getLabelForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2818
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v3, v0

    .line 2821
    new-instance v0, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    .line 2823
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cisco/android/nchs/ComponentManifest;->getMostRecentStatus(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 2824
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v5

    .line 2825
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getServiceStates()Ljava/util/Map;

    move-result-object v6

    .line 2826
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSState;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNativeServiceState(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    const-string p1, "NetworkComponentHostService"

    if-nez p4, :cond_0

    .line 2996
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "outState was null, returning error"

    invoke-static {p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2997
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :cond_0
    if-eqz p2, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    .line 3006
    :cond_1
    new-instance p1, Lcom/cisco/android/nchs/NetworkComponentHostService$22;

    invoke-direct {p1, p0, p2, p5, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService$22;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p2, "getNativeServiceState"

    .line 3032
    invoke-direct {p0, p1, p2, p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    if-nez p1, :cond_2

    .line 3035
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 3038
    :cond_2
    invoke-virtual {p4, p1}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceStateParcel;->setState(Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;)V

    .line 3039
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 3002
    :cond_3
    :goto_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p3, "unexpected null packageId or serviceName"

    invoke-static {p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private getNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 3

    if-eqz p3, :cond_3

    .line 2429
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNetworkComponentInstalled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 2431
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Component: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed cannot get property: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2432
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2435
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2438
    invoke-virtual {v0, p2}, Lcom/cisco/android/nchs/ComponentManifest;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2443
    :try_start_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2456
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :catch_0
    move-exception p1

    .line 2447
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Null pointer exception occured when trying to add our string to the builder, caller error."

    invoke-static {p2, v1, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2448
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2453
    :cond_1
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "property: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not present for package: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2460
    :cond_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Package: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is installed, but we could not get the manifest, error"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2426
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "StringBuilderParcel passed was null, error"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNotificationResource()I
    .locals 4

    .line 3118
    sget-object v0, Lcom/cisco/android/nchs/NetworkComponentHostService$31;->$SwitchMap$com$cisco$android$nchs$aidl$NCHSState:[I

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNCHSOverallState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f0800f6

    packed-switch v0, :pswitch_data_0

    .line 3133
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Notification state, returning idle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNCHSOverallState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkComponentHostService"

    invoke-static {v0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_0
    const v0, 0x7f0800f8

    return v0

    :pswitch_1
    const v0, 0x7f0800f9

    return v0

    :pswitch_2
    const v0, 0x7f0800f4

    return v0

    :pswitch_3
    return v1

    :pswitch_4
    const v0, 0x7f0800f3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStringForState(Lcom/cisco/android/nchs/aidl/NCHSState;)Ljava/lang/String;
    .locals 5

    .line 3173
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3174
    sget-object v1, Lcom/cisco/android/nchs/NetworkComponentHostService$31;->$SwitchMap$com$cisco$android$nchs$aidl$NCHSState:[I

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    const v3, 0x7f1102b1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3187
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "unsupported Notification state, returning idle: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "NetworkComponentHostService"

    invoke-static {v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f1102b2

    .line 3185
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const p1, 0x7f1102b0

    .line 3183
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p1, 0x7f1102af

    .line 3181
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3179
    :cond_3
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const p1, 0x7f1102ae

    .line 3177
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6

    const-wide/32 v4, 0x11170

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 257
    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;ZJ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;ZJ)Ljava/lang/Object;
    .locals 6

    const-string v0, "interrupted while waiting on result for "

    const-string v1, "Posting message to run "

    const-string v2, "NetworkComponentHostService"

    const-string v3, "handleServiceRequest"

    .line 278
    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 282
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p4, "NetworkComponentHostService"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Running "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "() synchronously"

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const-string p1, "NetworkComponentHostService"

    const-string p2, "handleServiceRequest"

    .line 284
    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionExit(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mInProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mInProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    .line 289
    :cond_1
    iget-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestLock:Ljava/lang/Object;

    monitor-enter p3

    .line 291
    :try_start_0
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "NetworkComponentHostService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "()"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    :try_start_1
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :try_start_2
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {v1, p4, p5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string p1, "NetworkComponentHostService"

    const-string p4, "handleServiceRequest"

    .line 306
    invoke-static {p1, p4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionExit(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    :goto_1
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v2

    .line 302
    :catch_0
    :try_start_5
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p5, "NetworkComponentHostService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p5, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-object v2

    :catchall_0
    move-exception p1

    .line 308
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p1

    :catchall_1
    move-exception p1

    .line 309
    monitor-exit p3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method private importClientCertFromKeyChain(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 9

    const-string v0, "NetworkComponentHostService"

    if-eqz p2, :cond_0

    .line 3711
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->hasCertFromSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3713
    :try_start_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/CertificateManager;->getCertificateHashForAlias(Ljava/lang/String;)[B

    move-result-object p1

    .line 3714
    new-instance p3, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    sget-object p4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_CERTIFICATE_ALREADY_EXISTS:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-direct {p3, p4}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    invoke-interface {p5, p3, p1, p2}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB;->OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3723
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :catch_0
    move-exception p1

    .line 3718
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "getCertChain exception"

    invoke-static {p2, v0, p3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3720
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 3726
    :cond_0
    new-instance v8, Lcom/cisco/android/nchs/NetworkComponentHostService$26;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/cisco/android/nchs/NetworkComponentHostService$26;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/IImportClientCertCB;)V

    const-string p2, "importClientCert"

    .line 3766
    invoke-direct {p0, v8, p2, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_1

    .line 3769
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected null in importClientCert"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_1
    return-object p1
.end method

.method private initGlobalPackageEventBroadcastReceiver()V
    .locals 2

    .line 1538
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$6;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$6;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mGlobalPackageEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1572
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 1573
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 1574
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "package"

    .line 1575
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1577
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mGlobalPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1579
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$7;

    invoke-direct {v0, p0}, Lcom/cisco/android/nchs/NetworkComponentHostService$7;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCHSPackageEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1609
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.cisco.android.nchs.NCHS_EXTERNAL_OPERATION_COMPLETED_INTENT"

    .line 1610
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.cisco.android.nchs.NCHS_EXTERNAL_OPERATION_FAILED_INTENT"

    .line 1611
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1612
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCHSPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initiateShutdown(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 4260
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$30;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$30;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLandroid/net/Credentials;Ljava/lang/String;)V

    const-string p1, "initiateShutdown"

    .line 4302
    invoke-direct {p0, v6, p1, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 4305
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method private initiateShutdown(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 5

    const-string v0, "initiateShutdown: broadcasting \'"

    .line 4321
    iget-boolean v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownInProgress:Z

    const-string v2, "NetworkComponentHostService"

    if-eqz v1, :cond_0

    .line 4323
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "initiateShutdown: already in progress"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4324
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 4327
    iput-boolean v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownInProgress:Z

    .line 4328
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopSelf()V

    .line 4333
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 4335
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " listeners"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 4342
    :try_start_1
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    invoke-interface {v3, p1}, Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;->NCHSShutdownCB(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4350
    :catch_0
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Exception occurred when attempting to deliver NCHSShutdownCB"

    invoke-static {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4346
    :catch_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RemoteException occurred when attempting to deliver NCHSShutdownCB"

    invoke-static {v3, v2, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4353
    :cond_1
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 4357
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unexpected exception thrown why trying to Broadcast NCHSShutdownCB"

    invoke-static {v0, v2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4360
    :goto_2
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private installNetworkComponentFiles(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 1335
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Installing to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkComponentHostService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1339
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Install directory does not exist yet, creating"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1342
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not create the install directory"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1350
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/io/FileUtils;->SetExecutable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1354
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Failed to make installation directory executable"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1357
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->unZipComponentFiles(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method private isArchiveTrusted(Ljava/io/File;Ljava/io/File;)Z
    .locals 3

    const-string v0, "NetworkComponentHostService"

    :try_start_0
    const-string v1, "isArchiveTrusted()"

    .line 1494
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->setCatalog(Ljava/io/File;)Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$Builder;->build()Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;

    move-result-object p2

    .line 1496
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier;->verify()Z

    move-result p1
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/crypto/FileVerifier$FileVerifierException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 1500
    :catch_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to verify archive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private isBinderRequestInProc()Z
    .locals 2

    .line 340
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCallerAuthorizedForPackage(Landroid/net/Credentials;Ljava/lang/String;)Z
    .locals 6

    .line 829
    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 834
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 841
    :cond_1
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 843
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 849
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Credentials;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cannot access "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkComponentHostService"

    invoke-static {v0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private isDeviceInfoAvailable()Z
    .locals 1

    .line 3785
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetDeviceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceInfoAvailable(Z)Z
    .locals 2

    .line 3679
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$25;

    invoke-direct {v0, p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService$25;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Z)V

    const-string v1, "isDeviceInfoAvailable"

    .line 3688
    invoke-direct {p0, v0, v1, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    .line 3691
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "NetworkComponentHostService"

    const-string v1, "Unexpected null return value from isDeviceInfoAvailable"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 3695
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private isNativeServiceRunning(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 2147
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getComponentServiceForPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2151
    sget-object p2, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isNetworkComponentInstalled(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private isRootLaunchRequired()Z
    .locals 2

    .line 3795
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->CheckPrerequisites(Landroid/content/Context;)Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    move-result-object v0

    sget-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_ROOT_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private launchRunAtStartupServices()V
    .locals 7

    const-string v0, "LaunchRunAtStartupServices"

    const-string v1, "NetworkComponentHostService"

    .line 1511
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ComponentManifest;

    .line 1515
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Checking : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for startup services"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 1518
    invoke-virtual {v3}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->isRunAtStartup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1520
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "starting: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    invoke-direct {p0, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startComponentServiceProcess(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1523
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not start service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private needsToWaitForServices(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ComponentManifest$ServiceId;",
            ">;)Z"
        }
    .end annotation

    .line 1014
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;

    .line 1016
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onCertImportFinished(Landroid/content/Intent;)V
    .locals 2

    .line 3494
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cisco/android/nchs/NetworkComponentHostService$24;

    invoke-direct {v1, p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService$24;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3559
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private parseComponentManifest(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;
    .locals 9

    const-string v0, "NetworkComponentHostService"

    const/4 v1, 0x0

    .line 1217
    :try_start_0
    new-instance v8, Lcom/cisco/android/nchs/ComponentManifest;

    const-string v4, ""

    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getInstallPathForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    move-object v2, v8

    move-object v3, p1

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/cisco/android/nchs/ComponentManifest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/cisco/android/nchs/IComponentPropertyManager;Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const-string v2, "ANDROID_PARENT_APP_USER_ID"

    .line 1221
    invoke-virtual {v8, v2, p2}, Lcom/cisco/android/nchs/ComponentManifest;->setReservedProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "NATIVE_COMPONENT_DATA_ID"

    .line 1225
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getDataDirectoryForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1224
    invoke-virtual {v8, p2, v2}, Lcom/cisco/android/nchs/ComponentManifest;->setReservedProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestPathForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/cisco/android/nchs/ComponentManifest;->populateFromXmlFile(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1229
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not parse XML manifest.  returning null"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v8

    :catch_0
    move-exception p1

    .line 1237
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "IllegalArgumentException occured during creation of manifest"

    invoke-static {p2, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private registerListener(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/net/Credentials;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;TT;Z)",
            "Lcom/cisco/android/nchs/aidl/NCHSReturnCode;"
        }
    .end annotation

    move-object v4, p3

    const-string v9, "NetworkComponentHostService"

    if-nez p5, :cond_0

    .line 4105
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected null IInterface for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0

    .line 4109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "register "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4110
    new-instance v11, Lcom/cisco/android/nchs/NetworkComponentHostService$28;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/cisco/android/nchs/NetworkComponentHostService$28;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Credentials;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p6

    .line 4158
    invoke-direct {p0, v11, v10, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez v1, :cond_1

    .line 4161
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleServiceRequest for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_1
    return-object v1
.end method

.method private sendServiceReadyIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "NCHS_COMPONENT_SERVICE_READY_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    .line 1085
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "service_name"

    .line 1086
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1087
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDisplayNotifications(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 8

    .line 3957
    new-instance v7, Lcom/cisco/android/nchs/NetworkComponentHostService$27;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService$27;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLandroid/net/Credentials;Ljava/lang/String;Z)V

    const-string/jumbo p1, "updateComponentState"

    .line 4001
    invoke-direct {p0, v7, p1, p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 4004
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method private setDisplayNotifications(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 2

    if-eqz p2, :cond_0

    .line 4044
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4048
    :cond_0
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4051
    :goto_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->shouldDisplayIcon()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationVisible:Z

    if-eqz p2, :cond_2

    .line 4053
    :cond_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDisplayNotifications: updated \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for a total of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkComponentHostService"

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4054
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateDisplayIcon()V

    .line 4057
    :cond_2
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private setNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 4

    .line 2297
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const-string v1, "NetworkComponentHostService"

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 2302
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "passed null key to setNetworkComponentProperty"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2307
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/cisco/android/nchs/ComponentManifest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2309
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const-string p3, "HideIcon"

    .line 2314
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_1

    .line 2316
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateConfigDisplayIcon()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2318
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_1
    const-string p3, "BootLaunch"

    .line 2321
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_2

    .line 2323
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateBootLaunch()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2325
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_2
    :goto_0
    return-object p1

    .line 2333
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Component: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not present, cannot set property: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private setOpResult(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 322
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mInProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    :cond_0
    iget-object p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    monitor-enter p2

    if-eqz p1, :cond_1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mOutProcRequestResult:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 334
    monitor-exit p2

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setUserPreference(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 3

    const-string v0, "UserPreferences_NCHS"

    const/4 v1, 0x0

    .line 4012
    invoke-virtual {p0, v0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4013
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4014
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4015
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4018
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to commit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value to SharedPreferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkComponentHostService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "DebugMode"

    .line 4021
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4023
    iput-boolean p2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDebugMode:Z

    .line 4026
    :cond_1
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private shouldDisplayIcon()Z
    .locals 1

    .line 3918
    iget-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDebugMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDisplayNotificationConfig:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private shutdownIIPCServer(Lcom/cisco/android/nchs/ipc/IIPCServer;Ljava/lang/String;)V
    .locals 4

    const-string v0, "shutting down: "

    const-string v1, "NetworkComponentHostService"

    if-nez p1, :cond_0

    .line 3201
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "shutdownIIPCServer called with null server"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p2, "IPC Server"

    .line 3210
    :cond_1
    invoke-interface {p1}, Lcom/cisco/android/nchs/ipc/IIPCServer;->shutdownServer()V

    .line 3211
    invoke-interface {p1}, Lcom/cisco/android/nchs/ipc/IIPCServer;->interrupt()V

    .line 3215
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x1388

    .line 3216
    invoke-interface {p1, v2, v3}, Lcom/cisco/android/nchs/ipc/IIPCServer;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3220
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interrupted while shutting down:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private startAndManageIIPCServer(Lcom/cisco/android/nchs/ipc/IIPCServer;Ljava/lang/String;)V
    .locals 1

    .line 3231
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIPCServers:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3232
    invoke-interface {p1}, Lcom/cisco/android/nchs/ipc/IIPCServer;->start()V

    return-void
.end method

.method private startComponent(Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 5

    .line 937
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getSignallingServices()Ljava/util/List;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 940
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 942
    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startComponentServiceProcess(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 944
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not start: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkComponentHostService"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponent(Lcom/cisco/android/nchs/ComponentManifest;)Z

    .line 950
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 952
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 956
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_0
    return-object p1
.end method

.method private startComponentServiceProcess(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z
    .locals 1

    .line 1097
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isRootLaunchRequired()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->startProcess(Z)Z

    move-result p1

    return p1
.end method

.method private startNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 5

    .line 1972
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const-string v1, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 1975
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Package : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an installed component"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1979
    :cond_0
    invoke-virtual {v0, p2}, Lcom/cisco/android/nchs/ComponentManifest;->getServiceByID(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object v0

    const-string v2, "Service: "

    if-nez v0, :cond_1

    .line 1982
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not exist for package: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1986
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->signalsOnReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1988
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    new-instance v4, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;

    invoke-direct {v4, p1, p2}, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1991
    :cond_2
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 1993
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already running"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1996
    :cond_3
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTING:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object p2

    if-eq p1, p2, :cond_4

    .line 1998
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startComponentServiceProcess(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2000
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Could not start component Service: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2001
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2005
    :cond_4
    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->signalsOnReady()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2007
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2011
    :cond_5
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private stopAllRunningServices()Z
    .locals 11

    .line 1175
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "NetworkComponentHostService"

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/android/nchs/ComponentManifest;

    .line 1177
    invoke-virtual {v4}, Lcom/cisco/android/nchs/ComponentManifest;->getServices()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 1180
    sget-object v8, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-virtual {v7}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getState()Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    move-result-object v9

    if-eq v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 1183
    invoke-direct {p0, v7}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponentService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z

    move-result v8

    if-nez v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1187
    sget-object v8, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not stop service: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v5, v7}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 1191
    invoke-virtual {v4, v5}, Lcom/cisco/android/nchs/ComponentManifest;->setStateDescription(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, " running processes"

    if-lez v2, :cond_3

    .line 1197
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to stop "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 1202
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Succesfully stopped all "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v5, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private stopComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 8

    .line 1107
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const-string v1, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 1110
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed, cannot stop it..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ACCESS_APP_DATA:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1115
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1116
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1118
    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v6, v5, :cond_1

    .line 1120
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "removing notification key=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1124
    :cond_2
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationPackages:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1126
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponent(Lcom/cisco/android/nchs/ComponentManifest;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :goto_1
    return-object p1
.end method

.method private stopComponent(Lcom/cisco/android/nchs/ComponentManifest;)Z
    .locals 7

    .line 1138
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    .line 1140
    invoke-direct {p0, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponentService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1143
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not stop service: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for package: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "NetworkComponentHostService"

    invoke-static {v4, v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p1, v0}, Lcom/cisco/android/nchs/ComponentManifest;->setStateDescription(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method private stopComponentService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z
    .locals 0

    .line 1163
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->stopProcess()Z

    move-result p1

    return p1
.end method

.method private stopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 4

    .line 2073
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getComponentServiceForPackage(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest$ComponentService;

    move-result-object v0

    const-string v1, "NetworkComponentHostService"

    if-eqz v0, :cond_1

    .line 2076
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponentService(Lcom/cisco/android/nchs/ComponentManifest$ComponentService;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2078
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not stop service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest$ComponentService;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for package: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2082
    :cond_0
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2086
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find a service with the packageID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " serviceName: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private unZipComponentFiles(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const-string v0, "NetworkComponentHostService"

    const/4 v1, 0x0

    .line 1372
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1386
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 1436
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    .line 1393
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extracting:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1399
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1402
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1404
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create directory structure for: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1436
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return v1

    .line 1411
    :cond_2
    :try_start_5
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1412
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, p1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    new-array p1, v4, [B

    .line 1417
    :goto_1
    invoke-virtual {v2, p1, v1, v4}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 1419
    invoke-virtual {v3, p1, v1, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 1421
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1422
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1427
    :try_start_6
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Unexpected IOException occurred while unzipping"

    invoke-static {p2, v0, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1436
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return v1

    :goto_2
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1441
    :catch_4
    throw p1

    :catch_5
    move-exception p1

    .line 1376
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Zip file could not be found"

    invoke-static {p2, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private uninstallNetworkComponent(Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 1828
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->isNetworkComponentInstalled(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 1830
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Package: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not installed, cannot continue with uninstall"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1835
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    .line 1836
    sget-object v2, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v2, v0, :cond_1

    .line 1838
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not stop Component: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", stopping uninstall process"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 1845
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getInstallPathForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 1847
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1850
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, p2, v3

    .line 1852
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1856
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1859
    invoke-direct {p0, v4, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->deleteDirectory(Ljava/io/File;I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1861
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not delete directory: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1862
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1868
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1870
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Could not delete: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1878
    :cond_5
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1884
    :cond_6
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getInstallPathForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->deleteDirectory(Ljava/io/File;I)Z

    move-result p2

    if-nez p2, :cond_7

    .line 1886
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Problem encountered while deleting directory for package: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1892
    :cond_7
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object p2

    if-nez p2, :cond_8

    .line 1895
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not get manifest for package: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", although isComponentInstalled returned true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_FAILED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 1900
    :cond_8
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1902
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private unregisterListener(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/net/Credentials;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;TT;Z)",
            "Lcom/cisco/android/nchs/aidl/NCHSReturnCode;"
        }
    .end annotation

    move-object v4, p3

    const-string v9, "NetworkComponentHostService"

    if-nez p5, :cond_0

    .line 4185
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected null IInterface for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4186
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object v0

    .line 4189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unregister "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4190
    new-instance v11, Lcom/cisco/android/nchs/NetworkComponentHostService$29;

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lcom/cisco/android/nchs/NetworkComponentHostService$29;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Credentials;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p6

    .line 4238
    invoke-direct {p0, v11, v10, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez v1, :cond_1

    .line 4241
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleServiceRequest for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4242
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_1
    return-object v1
.end method

.method private updateBootLaunch()Z
    .locals 4

    .line 3870
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->calculateBootLaunch()Z

    move-result v0

    .line 3871
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "launchatboot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 3875
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3877
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3880
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3884
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3888
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateBootLaunch: got IOException creating file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkComponentHostService"

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private updateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 8

    .line 2543
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object v0

    const-string v1, "NetworkComponentHostService"

    if-nez v0, :cond_0

    .line 2546
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Call to updateComponentState() made with invalid package: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2551
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/android/nchs/ComponentManifest;->getMostRecentStatus(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 2552
    invoke-virtual {p3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v3

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v4

    const-string v5, " for "

    const-string v6, "/"

    if-ne v3, v4, :cond_1

    .line 2553
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2555
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateComponentState: duplicate state="

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2559
    :cond_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateComponentState: from="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/android/nchs/ComponentManifest;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", to="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2562
    invoke-virtual {v0, p2}, Lcom/cisco/android/nchs/ComponentManifest;->setStateDescription(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {p3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/android/nchs/ComponentManifest;->setState(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    .line 2568
    invoke-direct {p0, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateStateNotification(Ljava/lang/String;)V

    .line 2571
    new-instance p1, Landroid/content/Intent;

    const-string p2, "NCHS_COMPONENT_STATE_UPDATED_INTNET"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "KEY_EXTRA_UPDATED_COMPONENT"

    .line 2572
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNativeComponentInfoForManifest(Lcom/cisco/android/nchs/ComponentManifest;)Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2573
    invoke-virtual {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2575
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method private updateConfigDisplayIcon()Z
    .locals 1

    .line 4068
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->calculateConfigDisplayIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDisplayNotificationConfig:Z

    .line 4070
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->shouldDisplayIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationVisible:Z

    if-eqz v0, :cond_1

    .line 4072
    :cond_0
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateDisplayIcon()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private updateDisplayIcon()V
    .locals 3

    .line 3928
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->shouldDisplayIcon()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "starting foreground for NCHS"

    .line 3930
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x115b

    .line 3931
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mStateNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startForeground(ILandroid/app/Notification;)V

    .line 3932
    iput-boolean v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationVisible:Z

    goto :goto_0

    .line 3936
    :cond_0
    invoke-virtual {p0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopForeground(Z)V

    .line 3937
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 3938
    iput-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationVisible:Z

    :goto_0
    return-void
.end method

.method private updateStateNotification(Ljava/lang/String;)V
    .locals 7

    .line 3050
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3052
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getFullComponentList()Ljava/util/List;

    move-result-object v1

    .line 3054
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_1

    .line 3056
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 3058
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    .line 3059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getStateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3062
    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageStartIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 3066
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110225

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNCHSOverallState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getStringForState(Lcom/cisco/android/nchs/aidl/NCHSState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1100ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v1, 0x7f110203

    .line 3071
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v1, v5

    :goto_1
    if-nez v1, :cond_2

    .line 3078
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3083
    :cond_2
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    .line 3085
    invoke-static {p0, v3, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3087
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v5, "default"

    invoke-direct {v3, p0, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 3089
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getNotificationResource()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f1101fa

    .line 3090
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3091
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3092
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3093
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3094
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 3096
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mStateNotification:Landroid/app/Notification;

    const-string v0, "Unknown"

    .line 3098
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3100
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "NetworkComponentHostService"

    const-string v1, "Unknown state"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    :cond_3
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3107
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3108
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method private waitForSignallingServices(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 973
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    .line 976
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getManifestForPackage(Ljava/lang/String;)Lcom/cisco/android/nchs/ComponentManifest;

    move-result-object p1

    .line 977
    invoke-virtual {p1}, Lcom/cisco/android/nchs/ComponentManifest;->getSignallingServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 981
    :cond_0
    new-instance v1, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;

    invoke-direct {v1, p1, p2}, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 985
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    monitor-enter v1

    .line 987
    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->needsToWaitForServices(Ljava/util/List;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 991
    :try_start_1
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 995
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x1f40

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 998
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_TIMED_OUT:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    monitor-exit v1

    return-object p1

    .line 1001
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :catchall_0
    move-exception p1

    .line 1001
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public LoadProperties(Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "NetworkComponentHostService"

    const-string v1, "Failed to deserialize "

    .line 3569
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getDataFileForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v2, 0x0

    .line 3575
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3576
    :try_start_1
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3577
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/TreeMap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3600
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3610
    :catch_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-object v2, v5

    goto/16 :goto_7

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_4
    move-exception p1

    move-object v4, v2

    goto :goto_0

    :catch_5
    move-exception v5

    move-object v4, v2

    goto :goto_3

    :catch_6
    move-object v4, v2

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto/16 :goto_8

    :catch_7
    move-exception p1

    move-object v3, v2

    move-object v4, v3

    .line 3591
    :goto_0
    :try_start_5
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Unexpected IO exception on loading properties"

    invoke-static {v1, v0, v5, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_0

    .line 3600
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_1

    :catch_8
    nop

    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    .line 3610
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    goto :goto_7

    :catch_9
    move-exception v5

    move-object v3, v2

    move-object v4, v3

    .line 3586
    :goto_3
    :try_start_8
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Existing connections will be overwritten"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, v0, p1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_1

    .line 3600
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_4

    :catch_a
    nop

    :cond_1
    :goto_4
    if-eqz v3, :cond_3

    goto :goto_2

    :catch_b
    move-object v3, v2

    move-object v4, v3

    .line 3581
    :catch_c
    :goto_5
    :try_start_a
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v4, :cond_2

    .line 3600
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_6

    :catch_d
    nop

    :cond_2
    :goto_6
    if-eqz v3, :cond_3

    goto :goto_2

    :catch_e
    :cond_3
    :goto_7
    return-object v2

    :catchall_2
    move-exception p1

    move-object v2, v4

    :goto_8
    if-eqz v2, :cond_4

    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_9

    :catch_f
    nop

    :cond_4
    :goto_9
    if-eqz v3, :cond_5

    .line 3610
    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    .line 3616
    :catch_10
    :cond_5
    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method

.method public SaveProperties(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 5

    const-string v0, "NetworkComponentHostService"

    .line 3626
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getDataFileForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3631
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3632
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3633
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3652
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3663
    :catch_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v4

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-object v4, v2

    :catch_5
    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_5

    :catch_6
    move-exception p1

    move-object v3, v2

    .line 3643
    :goto_0
    :try_start_5
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Unexpected IO excepction on saving connection list"

    invoke-static {p2, v0, v4, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_0

    .line 3652
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_1

    :catch_7
    nop

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 3663
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    :catch_8
    :cond_1
    return v1

    :catchall_2
    move-exception p1

    goto :goto_5

    :catch_9
    move-object v4, v2

    .line 3638
    :goto_2
    :try_start_8
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_2

    .line 3652
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_3

    :catch_a
    nop

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    .line 3663
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b

    :catch_b
    :cond_3
    return v1

    :catchall_3
    move-exception p1

    move-object v3, v2

    :goto_4
    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_4

    .line 3652
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c

    goto :goto_6

    :catch_c
    nop

    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    .line 3663
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 3669
    :catch_d
    :cond_5
    throw p1
.end method

.method protected getNetworkComponentProperty(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 2351
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$15;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$15;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p4, :cond_0

    .line 2396
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "NetworkComponentHostService"

    const-string p3, "null StringBuilderParcel passed to GetNetworkComponentProperty, returning error"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2397
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    :cond_0
    const-string p1, "getNetworkComponentProperty"

    .line 2400
    invoke-direct {p0, v6, p1, p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 2403
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1

    .line 2407
    :cond_1
    array-length p2, p1

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    .line 2409
    aget-object p2, p1, p3

    if-eqz p2, :cond_2

    .line 2411
    invoke-virtual {p4}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object p2

    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/4 p2, 0x0

    .line 2416
    aget-object p1, p1, p2

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    return-object p1
.end method

.method protected installApplicationAPK(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    .line 2588
    new-instance p1, Lcom/cisco/android/nchs/NetworkComponentHostService$17;

    invoke-direct {p1, p0, p2, p4, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService$17;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p2, "installApplicationAPK"

    .line 2621
    invoke-direct {p0, p1, p2, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2624
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method protected installNetworkComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1629
    new-instance v7, Ljava/io/File;

    move-object/from16 v4, p2

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1630
    new-instance v8, Ljava/io/File;

    move-object/from16 v5, p3

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1631
    invoke-direct/range {p0 .. p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getInstallPathForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 1635
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/32 v1, 0x11170

    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    const-wide/16 v15, 0xf

    mul-long v13, v13, v15

    cmp-long v0, v13, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v13, v1

    .line 1645
    :goto_0
    new-instance v15, Lcom/cisco/android/nchs/NetworkComponentHostService$8;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/cisco/android/nchs/NetworkComponentHostService$8;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/io/File;Ljava/io/File;Ljava/io/File;)V

    const-string v2, "installNetworkComponent"

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v4, v13

    .line 1739
    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;ZJ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez v0, :cond_1

    .line 1742
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_1

    .line 1744
    :cond_1
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne v1, v0, :cond_2

    const/4 v0, 0x0

    .line 1746
    invoke-direct {v10, v11, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->waitForSignallingServices(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v0

    .line 1747
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, v0, :cond_2

    .line 1749
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to wait for all "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'s services to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkComponentHostService"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    invoke-direct/range {p0 .. p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopComponent(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    const/4 v1, 0x0

    .line 1751
    invoke-direct {v10, v12, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->deleteDirectory(Ljava/io/File;I)Z

    :cond_2
    :goto_1
    return-object v0
.end method

.method protected isNativeServiceRunning(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 2102
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$12;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$12;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "isNativeServiceRunning"

    .line 2133
    invoke-direct {p0, v6, p1, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2136
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method protected isNetworkComponentInstalled(Landroid/net/Credentials;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 1

    .line 2169
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService$13;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;Z)V

    const-string p1, "isNetworkComponentInstalled"

    .line 2200
    invoke-direct {p0, v0, p1, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2203
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 3450
    const-class v0, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3452
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCSS:Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;

    return-object p1

    .line 3456
    :cond_0
    iget-object p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 11

    const-string v0, "onCreate()"

    const-string v1, "NetworkComponentHostService"

    .line 3285
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 3288
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->acquireResources(Landroid/content/Context;)V

    .line 3290
    new-instance v0, Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-direct {v0, p0, p0}, Lcom/cisco/android/nchs/support/CertificateManager;-><init>(Landroid/content/Context;Lcom/cisco/android/nchs/NetworkComponentHostService;)V

    iput-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    .line 3293
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3294
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mComponents:Ljava/util/LinkedList;

    new-instance v9, Lcom/cisco/android/nchs/ComponentManifest;

    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VPN"

    new-instance v6, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/cisco/android/nchs/ComponentManifest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/cisco/android/nchs/IComponentPropertyManager;Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3298
    new-instance v2, Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-direct {v2, p0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    .line 3299
    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->refreshSavedDeviceInfo()Z

    .line 3301
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetDeviceID()Ljava/lang/String;

    move-result-object v2

    .line 3302
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v3}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getRel25DeviceID()Ljava/lang/String;

    move-result-object v3

    .line 3303
    iget-object v4, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v4}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetRelease24DeviceID()Ljava/lang/String;

    move-result-object v4

    .line 3306
    iget-object v5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/cisco/android/nchs/support/CertificateManager;->setKeystorePath(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 3311
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "could not generate device-id as cert store access seed"

    invoke-static {v2, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    const-string v5, "aNyCoNN_c3r7_300d"

    invoke-virtual {v2, v5}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->setDeviceID(Ljava/lang/String;)V

    const-string v2, "DeviceInfo"

    .line 3314
    invoke-virtual {p0, v2, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3315
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "default_seed_used"

    .line 3316
    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3317
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v2, v5

    .line 3320
    :cond_0
    iget-object v5, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v5, v3, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->updatePasswordSeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3322
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v3, v4, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->updatePasswordSeed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3324
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v3, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->setPasswordSeed(Ljava/lang/String;)V

    .line 3330
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "codeSign.der"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 3333
    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v3, v2}, Lcom/cisco/android/nchs/support/CertificateManager;->initializeSigningCert(Ljava/io/InputStream;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3335
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "bad code-signing asset=codeSign.der"

    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 3340
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "failed to open asset=codeSign.der"

    invoke-static {v3, v1, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3343
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/CertificateManager;->initCertStores()V

    .line 3346
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->initGlobalPackageEventBroadcastReceiver()V

    .line 3349
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->launchRunAtStartupServices()V

    .line 3353
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mServicesLatch:Ljava/util/concurrent/CountDownLatch;

    .line 3356
    new-instance v2, Lcom/cisco/android/nchs/NCHSIPCServer;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIpcServerCB:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

    const-string v4, "com.cisco.android.nchs"

    invoke-direct {v2, p0, v4, v3}, Lcom/cisco/android/nchs/NCHSIPCServer;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    invoke-direct {p0, v2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startAndManageIIPCServer(Lcom/cisco/android/nchs/ipc/IIPCServer;Ljava/lang/String;)V

    .line 3360
    new-instance v2, Lcom/cisco/android/nchs/support/NCSSIPCServer;

    const-string v6, "com.cisco.android.ncss"

    iget-object v7, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mCertMgr:Lcom/cisco/android/nchs/support/CertificateManager;

    iget-object v8, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDevMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    iget-object v10, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIpcServerCB:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

    move-object v5, v2

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcom/cisco/android/nchs/support/NCSSIPCServer;-><init>(Ljava/lang/String;Lcom/cisco/android/nchs/support/CertificateManager;Lcom/cisco/android/nchs/support/DeviceInfoManager;Landroid/content/Context;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    const-string v3, "com.cisco.android.ncss"

    invoke-direct {p0, v2, v3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startAndManageIIPCServer(Lcom/cisco/android/nchs/ipc/IIPCServer;Ljava/lang/String;)V

    .line 3364
    new-instance v2, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    iget-object v3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIpcServerCB:Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;

    const-string v4, "com.cisco.android.ncss.broadcast"

    invoke-direct {v2, p0, v4, v3}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cisco/android/nchs/ipc/IIPCServer$IIPCServerCB;)V

    invoke-direct {p0, v2, v4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->startAndManageIIPCServer(Lcom/cisco/android/nchs/ipc/IIPCServer;Ljava/lang/String;)V

    .line 3370
    :try_start_1
    iget-object v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mServicesLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3375
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Timed out waiting for servers to start"

    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 3380
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Unexpected exception."

    invoke-static {v3, v1, v4, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    const-string v2, "UserPreferences_NCHS"

    .line 3383
    invoke-virtual {p0, v2, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "DebugMode"

    .line 3384
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mDebugMode:Z

    .line 3386
    iput-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNotificationVisible:Z

    const/4 v0, 0x0

    .line 3388
    invoke-direct {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateStateNotification(Ljava/lang/String;)V

    .line 3391
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateConfigDisplayIcon()Z

    .line 3392
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateDisplayIcon()V

    .line 3395
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateBootLaunch()Z

    .line 3397
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Service started."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "Destroying NCHS"

    .line 3403
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 3407
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3412
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "NetworkComponentHostService"

    const-string v3, "NullPointerException when trying to stop NHCS from foreground"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3416
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mAgentServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3420
    :catch_1
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3421
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3424
    invoke-direct {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopAllRunningServices()Z

    .line 3427
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mIPCServers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3429
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/android/nchs/ipc/IIPCServer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IPC Server"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->shutdownIIPCServer(Lcom/cisco/android/nchs/ipc/IIPCServer;Ljava/lang/String;)V

    goto :goto_1

    .line 3433
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mGlobalPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3434
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mNCHSPackageEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3436
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->releaseResources(Landroid/content/Context;)V

    .line 3438
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 3440
    iget-boolean v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownInProgress:Z

    if-eqz v0, :cond_1

    .line 3443
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->Terminate()V

    :cond_1
    return-void
.end method

.method protected onServiceReady(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1039
    new-instance v0, Lcom/cisco/android/nchs/NetworkComponentHostService$5;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService$5;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "onServiceReady"

    .line 1063
    invoke-direct {p0, v0, v1, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 1066
    new-instance p3, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;

    invoke-direct {p3, p1, p2}, Lcom/cisco/android/nchs/ComponentManifest$ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object v0, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    monitor-enter v0

    .line 1069
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1070
    iget-object p3, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mSignallingServices:Ljava/util/Set;

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    .line 1071
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    invoke-direct {p0, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->sendServiceReadyIntent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1071
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 3468
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "com.cisco.android.nchs.ACTION_CERT_IMPORT_RESULT"

    .line 3473
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-ne p3, v0, :cond_1

    .line 3475
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/NetworkComponentHostService;->onCertImportFinished(Landroid/content/Intent;)V

    goto :goto_0

    .line 3479
    :cond_1
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected onStartCommand action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkComponentHostService"

    invoke-static {p3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return p2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 4374
    iget-boolean p1, p0, Lcom/cisco/android/nchs/NetworkComponentHostService;->mShutdownInProgress:Z

    const-string v0, "NetworkComponentHostService"

    if-nez p1, :cond_0

    .line 4376
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "onUnbind: last client unbound"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4380
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "onUnbind: last client unbound -- completing shutdown"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4381
    invoke-virtual {p0}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopSelf()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected setNetworkComponentProperty(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 8

    .line 2245
    new-instance v7, Lcom/cisco/android/nchs/NetworkComponentHostService$14;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService$14;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLandroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "setNetworkComponentProperty"

    .line 2283
    invoke-direct {p0, v7, p1, p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2286
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method public startExternalActivity(Ljava/lang/String;ZLandroid/content/Intent;Landroid/content/Intent;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 2697
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$19;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$19;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Landroid/content/Intent;ZLandroid/content/Intent;)V

    const-string p1, "startExternalActivity"

    .line 2741
    invoke-direct {p0, v6, p1, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2744
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method protected startNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 1917
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$10;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$10;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "startNativeService"

    .line 1948
    invoke-direct {p0, v6, p1, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 1951
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    goto :goto_0

    .line 1953
    :cond_0
    sget-object p4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_WAIT_FOR_COMPONENT_START:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-ne p4, p1, :cond_1

    .line 1955
    invoke-direct {p0, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->waitForSignallingServices(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 1956
    sget-object p4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p4, p1, :cond_1

    .line 1958
    sget-object p4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to wait for for service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkComponentHostService"

    invoke-static {p4, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1959
    invoke-direct {p0, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->stopNativeService(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1963
    invoke-direct {p0, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateStateNotification(Ljava/lang/String;)V

    return-object p1
.end method

.method protected stopNativeService(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 2027
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$11;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$11;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p1, "stopNativeService"

    .line 2058
    invoke-direct {p0, v6, p1, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2061
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    const/4 p2, 0x0

    .line 2064
    invoke-direct {p0, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateStateNotification(Ljava/lang/String;)V

    return-object p1
.end method

.method protected uninstallApplicationAPK(Landroid/net/Credentials;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 0

    .line 2639
    new-instance p1, Lcom/cisco/android/nchs/NetworkComponentHostService$18;

    invoke-direct {p1, p0, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService$18;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;Z)V

    const-string/jumbo p2, "uninstallApplicationAPK"

    .line 2673
    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2676
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method

.method protected uninstallNetworkComponent(Landroid/net/Credentials;Ljava/lang/String;ZZ)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 7

    .line 1770
    new-instance v6, Lcom/cisco/android/nchs/NetworkComponentHostService$9;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cisco/android/nchs/NetworkComponentHostService$9;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Ljava/lang/String;ZLandroid/net/Credentials;Z)V

    const-string/jumbo p1, "uninstallNetworkComponent"

    .line 1813
    invoke-direct {p0, v6, p1, p4}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 1816
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    const/4 p2, 0x0

    .line 1819
    invoke-direct {p0, p2}, Lcom/cisco/android/nchs/NetworkComponentHostService;->updateStateNotification(Ljava/lang/String;)V

    return-object p1
.end method

.method protected updateComponentState(Landroid/net/Credentials;Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCode;
    .locals 8

    .line 2480
    new-instance v7, Lcom/cisco/android/nchs/NetworkComponentHostService$16;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cisco/android/nchs/NetworkComponentHostService$16;-><init>(Lcom/cisco/android/nchs/NetworkComponentHostService;Landroid/net/Credentials;Ljava/lang/String;ZLjava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)V

    const-string/jumbo p1, "updateComponentState"

    .line 2525
    invoke-direct {p0, v7, p1, p5}, Lcom/cisco/android/nchs/NetworkComponentHostService;->handleServiceRequest(Ljava/lang/Runnable;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-nez p1, :cond_0

    .line 2528
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_ERROR:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    :cond_0
    return-object p1
.end method
