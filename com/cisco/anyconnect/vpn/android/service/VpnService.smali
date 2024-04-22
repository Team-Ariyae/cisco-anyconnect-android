.class public Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.super Landroid/app/Service;
.source "VpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;
.implements Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;
.implements Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;
.implements Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;
.implements Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;
.implements Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;,
        Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;,
        Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;,
        Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;
    }
.end annotation


# static fields
.field private static final ACTION_RESUME_PROMPT:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.service.ACTION_RESUME_PROMPT"

.field private static final APPLICATION_RESTRICTIONS_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field private static final BLOCK_DISPLAY_SAME_TOAST_MILLISECONDS:J = 0xbb8L

.field public static final CLIENT_TYPE_EXTERNAL:I = 0x3

.field public static final CLIENT_TYPE_INTERNAL:I = 0x2

.field public static final CLIENT_TYPE_MDM:I = 0x1

.field public static final CLIENT_TYPE_NONE:I = 0x0

.field private static final ENTITY_NAME:Ljava/lang/String; = "VpnService"

.field private static final L10N_DIR_NAME:Ljava/lang/String; = "l10n"

.field private static final L10N_FILE_NAME:Ljava/lang/String; = "l10n.zip"

.field private static final MESSAGE_SINGLE_LOGOUT:I = 0xd9

.field private static final MESSAGE_TERMINATE:I = 0xd8

.field private static final MMS_LIFETIME_MS:I = 0xbb8

.field public static final NOTICE_CACHE_SIZE:I = 0x32

.field private static final PREFERENCE_ENABLED_KEY:Ljava/lang/String; = "PREFERENCE_ENABLED_KEY"

.field private static final PROFILE_FILE_NAME:Ljava/lang/String; = "profile.xml"

.field private static final SINGLE_LOGOUT_DISCONNECTED_DELAY_MS:I = 0x7d0

.field private static final SINGLE_LOGOUT_DISCONNECTING_DELAY_MS:I = 0x1388

.field private static final TERMINATE_EXPIRATION_MS:J = 0x1388L

.field private static final TOAST_CACHE_SIZE:I = 0xa

.field private static final VPN_SERVICE_AIDL_VERSION:I = 0x3

.field private static final VPN_SERVICE_FOREGROUND_NOTIFICATION_ID:I = 0x58

.field protected static final WORK_CERT_CATEGORY:Ljava/lang/String; = "android_work_certs"

.field private static mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

.field private static final mLastToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ERROR_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowExitApp:Z

.field private mBlockedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

.field private mCertList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;

.field private mCertListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClearActiveOnDisconnect:Z

.field private final mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

.field private mConnectOnEulaAccept:Z

.field private mConnectionListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

.field private mCurrentPrompt:Ljava/lang/Runnable;

.field private mCurrentPromptType:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

.field private mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

.field private mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

.field private mDependencyMgrCB:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

.field private mDisconnectClientType:I

.field private mFirstStateCBReceived:Z

.field private mForceCreateApi:Z

.field private mForegroundMgr:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

.field private final mHandler:Landroid/os/Handler;

.field private mImportListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IImportListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAttached:Z

.field private mIsFirstStartCommand:Z

.field private mIsWidgetInitiatedConnect:Z

.field private mKeyChainImporter:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

.field private mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

.field private mLastUnservicedMMS:J

.field private mLogListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeInstaller:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

.field private mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private mNchsServiceConnection:Landroid/content/ServiceConnection;

.field private mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

.field private mOnFailureUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSuccessUriList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingConnectName:Ljava/lang/String;

.field mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

.field private mPendingCredentials:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

.field private mPendingCredentialsLock:Ljava/lang/Object;

.field private mPendingDisconnect:Z

.field private mPendingSetActiveOnDisconnect:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

.field private final mPrivateVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;

.field private final mPromptHandlerMgr:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentNotices:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList<",
            "Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceStateListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingMgr:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

.field private mShutDownMsg:Ljava/lang/String;

.field private mSingleLogoutURL:Ljava/lang/String;

.field private mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

.field private mStatsListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTunneledApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

.field private mWidgetBroadcaster:Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;

.field private m_delayedConnect:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBlockedApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mBlockedApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectOnEulaAccept(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectOnEulaAccept:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectionListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentlyProcessingUri(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDependencyMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectClientType(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDisconnectClientType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImportListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInfoListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsAttached(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsAttached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastStats(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLogListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNchsServiceConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnFailureUriList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrivateVpnServiceImpl(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPrivateVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPromptHandlerMgr:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentNotices(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mRecentNotices:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceStateListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingMgr:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutDownMsg(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mShutDownMsg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/StateManager;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatsListenerList(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStatsListenerList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTunneledApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mTunneledApps:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBlockedApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mBlockedApps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectOnEulaAccept(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectOnEulaAccept:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnections(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmForceCreateApi(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForceCreateApi:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKeyChainImporter(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mKeyChainImporter:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSettingMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingMgr:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmShutDownMsg(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mShutDownMsg:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTunneledApps(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mTunneledApps:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastSettingChange(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastSettingChange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbroadcastSettingUserControllableChange(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastSettingUserControllableChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCurrentPrompt(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->clearCurrentPrompt()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZLcom/cisco/anyconnect/vpn/jni/JniHashMap;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZLcom/cisco/anyconnect/vpn/jni/JniHashMap;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconnectToActive(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connectToActive(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdeleteCurrentProfile(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->deleteCurrentProfile()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdisconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdisconnect(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdispatchPendingPrompt(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->dispatchPendingPrompt()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableStateNotifications(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->enableStateNotifications(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActiveConnection(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleConnectAction(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleConnectAction(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSingleLogout(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleSingleLogout()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mimportProfileToApi(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->importProfileToApi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mimportServerL10nData(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->importServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minitiateShutdown(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misCallerPriviledged(Lcom/cisco/anyconnect/vpn/android/service/VpnService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isCallerPriviledged(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misShuttingDown(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isShuttingDown()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monNchsConnected(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->onNchsConnected(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessUriParams(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterListener(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->registerListener(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestImportPKCS12(Lcom/cisco/anyconnect/vpn/android/service/VpnService;[BZLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->requestImportPKCS12([BZLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestoreDefaultL10n(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->restoreDefaultL10n(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetActive(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->setActive(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowExitFromSettingsMsg(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->showExitFromSettingsMsg()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowVPNConnectionRequiredNotification(Lcom/cisco/anyconnect/vpn/android/service/VpnService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->showVPNConnectionRequiredNotification(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$muserSubmit(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->userSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;
    .locals 1

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$2;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$2;-><init>()V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastToastTimes:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 137
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->ERROR_STRING_MAP:Ljava/util/Map;

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mClearActiveOnDisconnect:Z

    .line 226
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDisconnectClientType:I

    .line 230
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingCredentialsLock:Ljava/lang/Object;

    .line 233
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    invoke-direct {v1}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    .line 236
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;-><init>(Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager$IPromptHandlerManagerCB;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPromptHandlerMgr:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    .line 237
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler-IA;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    .line 238
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl$IVpnConnectionListCB;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsFirstStartCommand:Z

    .line 240
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForceCreateApi:Z

    .line 252
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingDisconnect:Z

    .line 253
    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    .line 255
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mWidgetBroadcaster:Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;

    const-wide/16 v0, -0x1

    .line 273
    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastUnservicedMMS:J

    .line 275
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgrCB:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    .line 641
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$5;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    .line 1609
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$6;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    .line 2525
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$10;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPrivateVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService$Stub;

    .line 2730
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$11;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    return-void
.end method

.method private MMSInterfaceUp()V
    .locals 6

    .line 2462
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    const-string v1, "VpnService"

    if-nez v0, :cond_0

    .line 2464
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Deferring MMS event handling because API is not available."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastUnservicedMMS:J

    return-void

    .line 2469
    :cond_0
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2471
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "not connected- MMS notification not sent."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2475
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isSplitInclude()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2477
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "split-tunnel - MMS notification not sent."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2481
    :cond_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "MMS interface came up"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->HasUserOptedOutOfServiceImpactWarning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "notification"

    .line 2487
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2488
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_MMS_IMPACT_WARNING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    .line 2489
    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2491
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "default"

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f0800dc

    .line 2492
    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f1101fa

    .line 2493
    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f1101d1

    .line 2494
    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    .line 2495
    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const/16 v2, 0xd04

    .line 2497
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2498
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "MMS notification sent."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private actuallyClearActiveConnection()V
    .locals 1

    .line 4049
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->ClearActiveConnection()V

    const/4 v0, 0x0

    .line 4050
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mClearActiveOnDisconnect:Z

    return-void
.end method

.method private allowSavedCredentials(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)Z
    .locals 7

    .line 3555
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAndroidForWork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "restrictions"

    .line 3560
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    if-nez v0, :cond_1

    return v1

    .line 3569
    :cond_1
    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->getApplicationRestrictions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string/jumbo v2, "vpn_setting_allow_saved_credentials"

    .line 3570
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 3577
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 3578
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->findWorkConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 3579
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 3585
    :cond_3
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isDeviceSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "username"

    .line 3586
    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v2, "password"

    .line 3587
    invoke-virtual {p1, v2}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 3592
    :goto_0
    iget-object v4, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v4, v4

    if-ge v3, v4, :cond_8

    .line 3594
    iget-object v4, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    aget-object v4, v4, v3

    .line 3597
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Input:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iget-object v6, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v5, v6, :cond_5

    iget-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Password:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iget-object v6, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v5, v6, :cond_7

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->name:Ljava/lang/String;

    .line 3598
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    return v1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    const/4 p1, 0x1

    return p1

    :cond_9
    :goto_1
    return v1
.end method

.method private attach()Z
    .locals 10

    .line 1254
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForceCreateApi:Z

    const-string v1, "VpnService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1256
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Forcing API to be re-created."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->destroyApiService()V

    .line 1258
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsAttached:Z

    .line 1259
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForceCreateApi:Z

    .line 1263
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    if-nez v0, :cond_1

    .line 1267
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3, p0, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;-><init>(Landroid/os/Handler;Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;Lcom/cisco/anyconnect/vpn/jni/IACImporter$IACImporterCB;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/service/ApiService$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1271
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "ApiService Initialization failed."

    invoke-static {v3, v1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v0, 0x7f11033d

    .line 1272
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    return v2

    .line 1278
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsAttached:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    .line 1285
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/process/ACAndroidEnv;->SetVpnApiEnv(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1293
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Attach()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1297
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "attach failed"

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1301
    :cond_3
    iput-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsAttached:Z

    .line 1304
    iget-wide v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastUnservicedMMS:J

    const-wide/16 v6, -0x1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastUnservicedMMS:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0xbb8

    cmp-long v0, v4, v8

    if-gtz v0, :cond_4

    .line 1306
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Handling unserviced MMS event.."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->MMSInterfaceUp()V

    .line 1310
    :cond_4
    iput-wide v6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastUnservicedMMS:J

    return v3

    :catch_1
    move-exception v0

    .line 1289
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Failed to initialize environment."

    invoke-static {v3, v1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method private bindNchs()V
    .locals 3

    .line 1631
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1632
    const-class v1, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1633
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Bind to NCHS failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private broadcastActiveConnection()V
    .locals 4

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_ACTIVE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetActive()Ljava/lang/String;

    move-result-object v1

    .line 848
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetAllNames()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 851
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "ActiveConnection"

    .line 854
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "ConnList"

    .line 858
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 862
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string/jumbo v3, "unexpected RemoteException in getting active connection"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    :goto_0
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastImportPkcs12Result([BLjava/lang/String;)V
    .locals 6

    const-string v0, "VpnService"

    .line 1526
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1531
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    invoke-interface {v3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->ImportPKCS12CompleteCB([BLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1540
    :try_start_2
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Exception on ImportPKCS12CompleteCB"

    invoke-static {v4, v0, v5, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1535
    :catch_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RemoteException on ImportPKCS12CompleteCB"

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1543
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1547
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unexpected exception thrown why trying to Broadcast ImportPKCS12CompleteCB"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private broadcastServiceReady()V
    .locals 5

    const-string v0, "VpnService"

    .line 1319
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1324
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    invoke-interface {v3}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;->ServiceReadyCB()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1334
    :catch_0
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Exception on ServiceReadyCB"

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1328
    :catch_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RemoteException on ServiceReadyCB"

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1337
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 1341
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v3, "unexpected exception thrown why trying to Broadcast ServiceReadyCB"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private broadcastSettingChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "VpnService"

    .line 872
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 877
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    invoke-interface {v3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;->SettingChangedCB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 881
    :catch_0
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Exception on SettingChangedCB"

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 884
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 888
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unexpected exception thrown why trying to Broadcast ServiceReadyCB"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private broadcastSettingUserControllableChange(Ljava/lang/String;Z)V
    .locals 5

    const-string v0, "VpnService"

    .line 903
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 908
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;

    invoke-interface {v3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;->SettingUserControllableChangedCB(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 912
    :catch_0
    :try_start_2
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Exception on SettingChangedCB"

    invoke-static {v3, v0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 919
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v1, "unexpected exception thrown why trying to Broadcast ServiceReadyCB"

    invoke-static {p2, v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private checkFipsMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 3

    .line 1153
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsKnox()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v2

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 1158
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetFipsMode()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object p1

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1159
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isFipsEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method private clearCurrentPrompt()V
    .locals 1

    const/4 v0, 0x0

    .line 4406
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPromptType:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    .line 4407
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPrompt:Ljava/lang/Runnable;

    return-void
.end method

.method private connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 1

    const/4 v0, 0x2

    .line 942
    invoke-direct {p0, p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1
.end method

.method private connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 4

    .line 953
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isMdmControlled(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v0

    const-string v1, "VpnService"

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 955
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Connect failed: no permission to control MDM connection"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->MDM_CONTROLLED_CONNECTION:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 961
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected NULL conn in Connect()"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->IsImportInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 967
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Cannot initiate connection because certificate import is in progress"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 971
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    .line 973
    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v3

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mFirstStateCBReceived:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_3

    .line 976
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 978
    :cond_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Making requested connection active"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->setActive(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 984
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Failed to set active connection"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 989
    :cond_4
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connectToActive(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1

    .line 996
    :cond_5
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    if-eqz p3, :cond_6

    .line 997
    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object p3

    invoke-interface {p3}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsConnected()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    if-ne p3, v0, :cond_6

    .line 1001
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p3

    .line 1002
    invoke-virtual {p3, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->equalsIgnoreIDInequality(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 1004
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "processing uri params: action="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 1005
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    .line 1006
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1012
    :cond_6
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Caching pending active connection: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    .line 1014
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    .line 1016
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-eq p1, p2, :cond_7

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 1017
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-eq p1, p2, :cond_7

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 1018
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-eq p1, p2, :cond_7

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 1019
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-ne p1, p2, :cond_8

    .line 1021
    :cond_7
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Disconnecting current connection"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 1023
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq p2, p1, :cond_8

    return-object p1

    .line 1029
    :cond_8
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1
.end method

.method private connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZLcom/cisco/anyconnect/vpn/jni/JniHashMap;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 3

    .line 932
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "connect() with prefill"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingCredentialsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_0
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingCredentials:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    .line 936
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    invoke-direct {p0, p1, p2, p4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZI)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 936
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private connectToActive(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 5

    .line 1067
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetActive()Ljava/lang/String;

    move-result-object v0

    .line 1068
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1072
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "Unexpected null active connection"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1076
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    if-nez v1, :cond_1

    .line 1078
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "Unexpected null ApiService"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1083
    :cond_1
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->checkFipsMode(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1085
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "FIPS mode mismatch"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FIPS_MISMATCH:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1091
    :cond_2
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->isEulaAccepted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    .line 1093
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "EULA Not yet accepted. Deferring connection"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iput-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectOnEulaAccept:Z

    .line 1095
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    .line 1096
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1101
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingCredentialsLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :try_start_1
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingCredentials:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    const/4 v4, 0x0

    .line 1104
    iput-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingCredentials:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    .line 1105
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    :try_start_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastActiveConnection()V

    if-eqz v0, :cond_5

    .line 1111
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetYubikeySlot()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object v1

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    if-eq v1, v4, :cond_5

    .line 1112
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->supportsYubikey()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1114
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v1, :cond_4

    .line 1116
    invoke-interface {v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->EnableYubikey(Z)V

    goto :goto_0

    :cond_4
    const-string p1, "Unable to enable yubikey store due to null NCHS"

    .line 1120
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1121
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->bindNchs()V

    .line 1122
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1126
    :cond_5
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetHostEntry()Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Connect(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1129
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    const/4 p1, 0x0

    .line 1130
    invoke-direct {p0, p1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->showVPNConnectionRequiredNotification(ZZ)V

    .line 1131
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDisconnectClientType:I

    .line 1132
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnConnectRequest()V

    .line 1136
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt p1, v1, :cond_6

    .line 1137
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForegroundMgr:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->startForeground()V

    :cond_6
    if-eqz v0, :cond_7

    .line 1141
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    goto :goto_1

    :cond_7
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 1105
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 1145
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "failed to get active connection"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1146
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1
.end method

.method private deleteCurrentProfile()Z
    .locals 2

    .line 3340
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    const-string v1, "profile.xml"

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetProfileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3342
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3348
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->DeleteProfileByName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3352
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->updateHostsFromProfile()Z

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private destroyApiService()V
    .locals 3

    .line 2061
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    if-eqz v0, :cond_1

    .line 2063
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Destroying cached ApiService."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Destroy()V

    .line 2066
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2068
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->Invalidate()V

    .line 2071
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->shutdown()V

    const/4 v0, 0x0

    .line 2072
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    :cond_1
    return-void
.end method

.method private disconnect()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 1

    const/4 v0, 0x2

    .line 1347
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    return-object v0
.end method

.method private disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 4

    const/4 v0, 0x0

    .line 1356
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isMdmControlled(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v0

    const-string v1, "VpnService"

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    .line 1358
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Disconnect failed: no permission to control MDM connection"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->MDM_CONTROLLED_CONNECTION:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 1362
    :cond_0
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDisconnectClientType:I

    const-string p1, "notification"

    .line 1365
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    const/16 v0, 0xd09

    .line 1366
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    const-string p1, "disconnecting"

    .line 1368
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 1371
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPrompt:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    .line 1373
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnService$VpnPromptType:[I

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPromptType:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    .line 1387
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid vpn prompt type="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPromptType:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    invoke-direct {p1}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;-><init>()V

    .line 1383
    iput-boolean v3, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    .line 1384
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->UserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    goto :goto_0

    .line 1379
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object p1

    invoke-interface {p1, v3, v3}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetCertBannerResponse(ZZ)V

    goto :goto_0

    .line 1376
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetBannerResponse(Z)V

    .line 1391
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnDisconnectRequest()V

    .line 1392
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Disconnect()V

    .line 1393
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->DISCONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    if-ne p1, v0, :cond_5

    .line 1395
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    .line 1397
    :cond_5
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1400
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->resetVpnState()V

    .line 1404
    :cond_6
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->clearCurrentPrompt()V

    .line 1406
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1
.end method

.method private dispatchPendingPrompt()V
    .locals 1

    .line 4413
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPrompt:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "dispatching pending prompt"

    .line 4415
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 4416
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPrompt:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4417
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->clearCurrentPrompt()V

    :cond_0
    return-void
.end method

.method private doToast(Ljava/lang/CharSequence;)V
    .locals 6

    .line 696
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastToastTimes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 700
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 701
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private enableAlwaysOn()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 11

    const-string v0, "Enabling Always On"

    .line 2348
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2349
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->setAlwaysOnEnabled(Z)Z

    .line 2350
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/AlwaysOnRetryConnectReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2351
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2355
    new-instance v0, Landroidx/work/Constraints$Builder;

    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 2356
    invoke-virtual {v0, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 2357
    invoke-virtual {v0, v2}, Landroidx/work/Constraints$Builder;->setRequiresBatteryNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 2358
    invoke-virtual {v0, v2}, Landroidx/work/Constraints$Builder;->setRequiresCharging(Z)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 2359
    invoke-virtual {v0, v2}, Landroidx/work/Constraints$Builder;->setRequiresStorageNotLow(Z)Landroidx/work/Constraints$Builder;

    move-result-object v0

    .line 2360
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v0

    .line 2364
    new-instance v10, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v3, Lcom/cisco/anyconnect/vpn/android/service/AlwaysOnWorker;

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 2366
    invoke-virtual {v10, v0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 2367
    invoke-virtual {v0, v2, v3, v4}, Landroidx/work/PeriodicWorkRequest$Builder;->setInitialDelay(JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-string v2, "always_on"

    .line 2368
    invoke-virtual {v0, v2}, Landroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 2369
    invoke-virtual {v0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/PeriodicWorkRequest;

    .line 2373
    invoke-static {p0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v3

    sget-object v4, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 2374
    invoke-virtual {v3, v2, v4, v0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    .line 2376
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->findWorkConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2379
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 2383
    invoke-direct {p0, v1, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->showVPNConnectionRequiredNotification(ZZ)V

    .line 2384
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "Always On failed. No active connection"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private enableStateNotifications(Z)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->EnableStateNotifications(Z)V

    return-void
.end method

.method private findWorkConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 4

    .line 1905
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1907
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    .line 1908
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v2

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 4

    const/4 v0, 0x0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetActive()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1043
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1047
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "Unexpected RemoteException in GetActive"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getConnectionFromIntent(Landroid/content/Intent;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
    .locals 5

    const-string v0, "VpnService"

    const-string v1, "connection_name"

    const-string v2, "No connection with name: "

    .line 2222
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2224
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2228
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetActive()Ljava/lang/String;

    move-result-object p1

    .line 2231
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2234
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    .line 2240
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "getConnectionFromIntent failed."

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getConnections(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;",
            ")",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;",
            ">;"
        }
    .end annotation

    .line 1917
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1918
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1920
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v2

    .line 1921
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetType()Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1923
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getDefaultPromptHandlerIntent()Landroid/content/Intent;
    .locals 2

    .line 4073
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    .line 4074
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private getErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;
    .locals 1

    .line 4086
    monitor-enter p0

    .line 4088
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->ERROR_STRING_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    .line 4091
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 4093
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4094
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getLastErrorString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getLaunchUriIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 2444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2445
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 2448
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2449
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private getPromptHandlerIntent()Landroid/content/Intent;
    .locals 4

    .line 4105
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    if-eqz v0, :cond_0

    .line 4108
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 4112
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPromptHandlerMgr:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4116
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 4120
    :cond_1
    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->GetStartIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4121
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 4127
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "Unexpected RemoteException in getPromptHandlerIntent. Reverting to default prompt handler"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4128
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private getSettingsIntent(Z)Landroid/content/Intent;
    .locals 4

    .line 4564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4565
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4566
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    if-eqz p1, :cond_0

    .line 4569
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4573
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object v0

    .line 4580
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.InstalledAppDetails"

    .line 4581
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    .line 4582
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pkg"

    .line 4583
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4584
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p1
.end method

.method private handleConnectAction(Landroid/content/Intent;)V
    .locals 4

    .line 2246
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getConnectionFromIntent(Landroid/content/Intent;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2249
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "no active conn selected"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f110207

    .line 2250
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    .line 2251
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPromptHandlerIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 2255
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    const-string v1, "connection_success_uri"

    .line 2257
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    const-string v1, "connection_failure_uri"

    .line 2258
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    const-string v1, "connection_prefill"

    .line 2260
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/JniHashMapParcel;

    .line 2261
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connecting: mOnSuccessUri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mOnFailureUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " prefillParcel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    const-string v2, "com.cisco.anyconnect.vpn.android.EXTRA_IS_WIDGET"

    const/4 v3, 0x1

    .line 2265
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v2, 0x2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;ZLcom/cisco/anyconnect/vpn/jni/JniHashMap;I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 2266
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq p1, v0, :cond_1

    .line 2268
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    .line 2269
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private handleCredentialprompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 3

    .line 4188
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$14;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 4212
    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4213
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const p1, 0x7f11026a

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4214
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->UserPrompt:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const-string v2, "UserPromptCB"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleVpnPrompt(Ljava/lang/Runnable;Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
    .locals 5

    .line 4271
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$DependencyManager$DependencyResult:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const v0, 0x7f11033d

    const/4 v1, 0x1

    const-string v2, "VpnService"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4337
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Shutting down because dependency check failed."

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4338
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 4339
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4330
    :pswitch_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Shutting down because dependency check timed out."

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4331
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    const p1, 0x7f110114

    .line 4332
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 4326
    :pswitch_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    goto/16 :goto_0

    .line 4319
    :pswitch_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "installing native components"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleNonfatalIncompatibility()V

    .line 4321
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 4322
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNativeInstaller:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->InstallNativeComponents()V

    goto/16 :goto_0

    .line 4305
    :pswitch_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    const-string p1, "com.cisco.anyconnect.vpn.android.rooted"

    .line 4306
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4308
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Shutting down because dependency check detected un-rooted device with rooted package"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11011c

    .line 4309
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4313
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Shutting down because dependency check detected unsupported device"

    invoke-static {p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11011d

    .line 4314
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4293
    :pswitch_4
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 4294
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->getIncompatibility()Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4297
    sget-object p1, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    .line 4300
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Shutting down due to fatal incompatibility: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->getMessage()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4301
    invoke-virtual {p1}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->getMessage()I

    move-result p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    goto :goto_0

    .line 4275
    :pswitch_5
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->attach()Z

    move-result p1

    .line 4276
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v4, v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    if-nez p1, :cond_2

    .line 4281
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Shutting down because attach failed."

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4282
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    return-void

    .line 4286
    :cond_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleNonfatalIncompatibility()V

    .line 4287
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->restoreDefaultL10n(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 4288
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastServiceReady()V

    .line 4289
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->bindNchs()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleNonfatalIncompatibility()V
    .locals 4

    .line 4351
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->getIncompatibility()Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4357
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "detected incompatibility: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->getMessage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VpnService"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    invoke-virtual {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->isFatal()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4360
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Unexpected fatal incompatibility found"

    invoke-static {v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4363
    :cond_1
    invoke-virtual {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->getPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetUserPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4365
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v2, "warning user of non-fatal incompatibility"

    invoke-static {v1, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4368
    invoke-virtual {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->getMessage()I

    move-result v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4369
    invoke-virtual {v0}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    .line 4372
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    .line 4375
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->createAndShowDialog()Z

    :cond_2
    return-void
.end method

.method private handleResumePrompt()V
    .locals 3

    const-string v0, "handleResumePrompt"

    const-string v1, "VpnService"

    .line 1509
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPrompt:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1513
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "handleResumePrompt without any prompts to resume!"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-void

    .line 1519
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPromptHandlerIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleSLOPrompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 4

    const-string v0, "sso-token"

    .line 3493
    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->getEntry(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unexpected null SLO prompt"

    .line 3495
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3499
    :cond_0
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->singleAttributes:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;

    if-nez p1, :cond_1

    const-string p1, "Unexpected null singleAttributes"

    .line 3501
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3505
    :cond_1
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, "Unexpected null so URL"

    .line 3506
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 3510
    :cond_2
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$SingleAttributes;->ssoUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSingleLogoutURL:Ljava/lang/String;

    .line 3512
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_3

    const/16 p1, 0x7d0

    goto :goto_0

    :cond_3
    const/16 p1, 0x1388

    .line 3513
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd9

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private handleSingleLogout()Z
    .locals 1

    .line 674
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSingleLogoutURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 675
    invoke-static {v0, p0}, Lcom/cisco/anyconnect/vpn/android/browser/BrowserUtility;->startBrowser(Ljava/lang/String;Landroid/content/Context;)Z

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSingleLogoutURL:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private handleStartCommand(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "handleStartCommand"

    const-string v1, "VpnService"

    .line 2275
    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "allow_exit_app"

    .line 2277
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 2279
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mAllowExitApp:Z

    .line 2281
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.cisco.anyconnect.vpn.android.service.ACTION_WIDGET_SHOW_CONNECTIONS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2283
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPromptHandlerIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2285
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.cisco.anyconnect.vpn.android.ACTION_CONNECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    const-string v0, "handling connect intent"

    .line 2287
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 2288
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/content/Intent;)V

    const-string v1, "connect_delay"

    .line 2295
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_3

    .line 2297
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->m_delayedConnect:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 2298
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2301
    :cond_2
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->m_delayedConnect:Ljava/lang/Runnable;

    .line 2302
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2304
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 2307
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.cisco.anyconnect.vpn.android.ACTION_DISCONNECT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2309
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->DISCONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    const-string v0, "connection_success_uri"

    .line 2311
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    const-string v0, "connection_failure_uri"

    .line 2312
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    .line 2314
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 2316
    iput-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingDisconnect:Z

    return-void

    :cond_5
    const/4 p1, 0x3

    .line 2320
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect(I)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 2321
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq p1, v0, :cond_8

    .line 2323
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    .line 2324
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    goto :goto_0

    .line 2327
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.cisco.anyconnect.vpn.android.service.ACTION_WIDGET_NEW_INSTANCE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2329
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastActiveConnection()V

    .line 2330
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->UnicastWidgets()V

    goto :goto_0

    .line 2332
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.VpnService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2334
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->enableAlwaysOn()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2337
    invoke-direct {p0, p1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    .line 2338
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting Always On connection to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq p1, v0, :cond_8

    .line 2341
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getErrorString(Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private handleVpnPrompt(Ljava/lang/Runnable;Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1176
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->setCurrentPrompt(Ljava/lang/Runnable;)V

    .line 1177
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPromptType:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    .line 1178
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->IsImportInProgress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, p4, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->SetVpnPrompt(Ljava/lang/String;Z)V

    .line 1182
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    const-string p4, "VpnService"

    if-eqz p2, :cond_0

    .line 1184
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Launching GUI to handle prompt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for widget-initiated connection"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPromptHandlerIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    const/4 p2, 0x0

    .line 1187
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    .line 1191
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPromptHandlerMgr:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1193
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1197
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Holding on to prompt "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " since no prompt handlers are available"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hasProfile()Z
    .locals 2

    .line 1667
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    const-string v1, "profile.xml"

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetProfileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1668
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private importProfileToApi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "VpnService"

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 1937
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->ImportProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1940
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ImportProfile failed."

    invoke-static {p2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1944
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->updateHostsFromProfile()Z

    :goto_0
    return p1

    .line 1933
    :cond_2
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo p2, "unexpected null inputs"

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private importServerL10nData(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 1

    .line 2050
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->CanImport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2052
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 2055
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->RequestImportSGL10nData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2056
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    :goto_0
    return-object p1
.end method

.method private initiateShutdown(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 712
    invoke-direct {p0, p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private initiateShutdown(Ljava/lang/String;ZZ)V
    .locals 5

    .line 722
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mAllowExitApp:Z

    if-nez v0, :cond_0

    return-void

    .line 726
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Initiating Shutdown"

    const-string v2, "VpnService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 731
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xd8

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mShutDownMsg:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 733
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 738
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mShutDownMsg:Ljava/lang/String;

    .line 739
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->stopSelf()V

    :cond_2
    const/4 p2, 0x0

    .line 745
    :try_start_0
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    if-ge p2, p3, :cond_3

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/service/IServiceStateListener;->ServiceShutdownCB(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 760
    :catch_0
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Exception occurred when attempting to deliver ServiceShutdownCB"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 754
    :catch_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException occurred when attempting to deliver ServiceShutdownCB"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 763
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    move p2, p3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 767
    :goto_2
    sget-object p3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v0, "unexpected exception thrown why trying to Broadcast ServiceShutdownCB"

    invoke-static {p3, v2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p3, p2

    :goto_3
    if-nez p3, :cond_4

    .line 773
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->toastShutdownMsg()V

    :cond_4
    return-void
.end method

.method private isCallerPriviledged(I)Z
    .locals 3

    .line 3454
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_1

    return v1

    .line 3464
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isFipsEnabled()Z
    .locals 3

    .line 1163
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingMgr:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    const-string v1, "Fips"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 1164
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isMdmControlled(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2507
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMControlled()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    .line 2512
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2513
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->IsMDMControlled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 2518
    :cond_1
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->isAlwaysOnEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isShuttingDown()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mShutDownMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSplitInclude()Z
    .locals 7

    .line 4432
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4437
    :cond_0
    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    if-nez v0, :cond_1

    return v1

    .line 4445
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->secureRoutes:[Lcom/cisco/anyconnect/vpn/jni/RouteInfo;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 4447
    iget-object v5, v4, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->network:Ljava/lang/String;

    const-string v6, "0.0.0.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/jni/RouteInfo;->subnet:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private logPrompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 6

    .line 3475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received prompt type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3477
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    if-eqz v1, :cond_1

    .line 3479
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 3481
    sget-object v4, Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;->Prompt_Combo:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    iget-object v5, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->type:Lcom/cisco/anyconnect/vpn/jni/PromptEntry$PromptType;

    if-ne v4, v5, :cond_0

    .line 3483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " group: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3489
    :cond_1
    :goto_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logUserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 5

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Submitting prompts: type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1483
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->entries:[Lcom/cisco/anyconnect/vpn/jni/PromptEntry;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 1485
    iget-boolean v4, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->isEntryGroup:Z

    if-eqz v4, :cond_0

    const-string v4, " group=\'"

    .line 1487
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/jni/PromptEntry;->value:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1490
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onNchsConnected(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 3

    .line 1645
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$7;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    invoke-interface {p1, v0, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->RegisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    .line 1658
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->applyRestrictions()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1662
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Unexpected Exception"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private processUriParams(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "processUriParams"

    .line 2397
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "anyconnect://close"

    .line 2402
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "anyconnect:close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2413
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "launching intent: action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 2416
    :try_start_0
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getLaunchUriIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2420
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected exception when trying to launch URI "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VpnService"

    invoke-static {v2, v3, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2406
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mAllowExitApp:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2408
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mAllowExitApp:Z

    goto :goto_0

    .line 2426
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    if-eqz p1, :cond_4

    const-string p1, ""

    const/4 v0, 0x0

    .line 2429
    invoke-direct {p0, p1, v0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;ZZ)V

    :cond_4
    const/4 p1, 0x0

    .line 2432
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    .line 2433
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    .line 2434
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    return-void
.end method

.method private registerListener(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/String;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "VpnService"

    if-nez p2, :cond_0

    .line 1213
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unexpected null IInterface"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    if-nez p4, :cond_1

    .line 1220
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1222
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "cannot register because VpnService is shutting down"

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    if-eqz p4, :cond_2

    .line 1228
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_4

    .line 1231
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "callback for "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " could not be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3

    const-string/jumbo p3, "unregistered"

    goto :goto_1

    :cond_3
    const-string p3, "registered"

    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private requestImportPKCS12([BZLjava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 5

    .line 4143
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    .line 4144
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->IsImportInProgress()Z

    move-result v1

    const-string v2, "VpnService"

    if-eqz v1, :cond_0

    .line 4147
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "requestImportPKCS12 failed: import already in progress"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4148
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 4151
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v3

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->CanImport(Lcom/cisco/anyconnect/vpn/jni/VPNState;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4154
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "requestImportPKCS12 failed: not in disconnected state"

    invoke-static {p1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CERT_IMPORT_INVALID_STATE:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    :cond_1
    const-string v1, "requestImportPKCS12 failed: operation failed"

    if-nez p2, :cond_2

    .line 4160
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    sget-object p3, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->StartImportPKCS12(Lcom/cisco/anyconnect/vpn/jni/IVpnApi;[B)Z

    move-result p1

    if-nez p1, :cond_4

    .line 4163
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 4169
    :cond_2
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v3

    invoke-virtual {p2, v3, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->ImportPKCS12WithPassword(Lcom/cisco/anyconnect/vpn/jni/IVpnApi;[BLjava/lang/String;)[B

    move-result-object p1

    .line 4170
    array-length p2, p1

    if-nez p2, :cond_3

    .line 4172
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 4176
    :cond_3
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "certHash"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_4
    return-object v0
.end method

.method private resetVpnState()V
    .locals 1

    .line 1498
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->clearCurrentPrompt()V

    const/4 v0, 0x0

    .line 1499
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    .line 1500
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingSetActiveOnDisconnect:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    return-void
.end method

.method private restoreDefaultL10n(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    .locals 4

    const-string v0, "l10n.zip"

    const-string v1, "VpnService"

    if-eqz p1, :cond_1

    .line 2012
    :try_start_0
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "l10n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2013
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    .line 2015
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 2017
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Installing default L10n package"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Restoring default L10n package"

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2024
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->CanImport()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2026
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_IN_PROGRESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1

    .line 2029
    :cond_2
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2030
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/cisco/android/nchs/io/FileUtils;->CopyFileFromAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getACImporter()Lcom/cisco/anyconnect/vpn/jni/IACImporter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/cisco/anyconnect/vpn/jni/IACImporter;->RequestImportL10nArchive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2035
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v0, :cond_4

    .line 2038
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    .line 2042
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Unexpected IOException"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2045
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->OPERATION_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    return-object p1
.end method

.method private setActive(Ljava/lang/String;I)Z
    .locals 3

    const-string v0, "VpnService"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 627
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const p2, 0x7f110202

    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, 0x3

    if-ne v2, p2, :cond_1

    const/4 p2, 0x0

    .line 632
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isMdmControlled(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 634
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const p2, 0x7f1101cb

    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 638
    :cond_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->SetActive(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/VPNState;Z)Z

    move-result p1

    return p1
.end method

.method private setCurrentPrompt(Ljava/lang/Runnable;)V
    .locals 0

    .line 4401
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentPrompt:Ljava/lang/Runnable;

    return-void
.end method

.method private showClearAppDataMsg()V
    .locals 4

    .line 4527
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 4528
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v1, 0x7f1102be

    .line 4529
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_TEXT_IS_ERROR_KEY"

    const/4 v2, 0x0

    .line 4530
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x7f1102a6

    .line 4531
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.cisco.anyconnect.vpn.android.POPUP_NEUTRAL_BUTTON_LABEL_KEY"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.POPUP_NEUTRAL_BUTTON_INTENT_KEY"

    .line 4532
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSettingsIntent(Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4533
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showExitFromSettingsMsg()V
    .locals 4

    const-string v0, "force_stop_settings_ack"

    .line 4540
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->GetUserPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4542
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSettingsIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f1102bf

    .line 4547
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4551
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSettingsIntent(Z)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3, p0}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    .line 4554
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/view/PopupWithHide;->createAndShowDialog()Z

    :goto_0
    return-void
.end method

.method private showVPNConnectionRequiredNotification(ZZ)V
    .locals 7

    .line 1443
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    const-string v1, "always_on"

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notification"

    .line 1448
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0xd09

    if-eqz p2, :cond_4

    const/high16 p2, 0x4000000

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1456
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.cisco.anyconnect.vpn.android.PRIMARY_ACTIVITY_ADD_CONNECTION_ACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1457
    invoke-static {p0, v2, v3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_0

    .line 1459
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v2, v3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 1462
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "default"

    invoke-direct {v2, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0800f4

    .line 1463
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f110333

    .line 1464
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const v4, 0x7f110332

    const v5, 0x7f110331

    if-eqz p1, :cond_2

    const v6, 0x7f110332

    goto :goto_1

    :cond_2
    const v6, 0x7f110331

    .line 1465
    :goto_1
    invoke-static {v6}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0x7f110331

    .line 1467
    :goto_2
    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 1469
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 1470
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 1472
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    .line 1476
    :cond_4
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_3
    return-void
.end method

.method private switchActiveConnection(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VpnService"

    const-string v1, "opSwitchActive"

    .line 4060
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 4061
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    .line 4062
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 4063
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 4064
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 4065
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4067
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    :cond_1
    return-void
.end method

.method private toastShutdownMsg()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mShutDownMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateHostsFromProfile()Z
    .locals 9

    .line 808
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetHosts()[Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    move-result-object v0

    .line 809
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 812
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object v2

    .line 814
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 816
    iget-object v6, v5, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certHash:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iget-object v7, v5, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    if-ne v6, v7, :cond_0

    .line 818
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v7, "VpnService"

    const-string v8, "invalid configuration: cert auth mode set to manual without a cert selected. reverting to automatic"

    invoke-static {v6, v7, v8}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    sget-object v6, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    iput-object v6, v5, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->certificateAuthMode:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 822
    :cond_0
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-direct {v6, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;-><init>(Lcom/cisco/anyconnect/vpn/jni/HostEntry;)V

    .line 824
    iget-boolean v5, v5, Lcom/cisco/anyconnect/vpn/jni/HostEntry;->activateOnImport:Z

    if-eqz v5, :cond_1

    .line 826
    iput-object v6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingSetActiveOnDisconnect:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    :cond_1
    if-eqz v2, :cond_2

    .line 830
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->shouldApplyPerappToProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 831
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getAllowedApps()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setTunnelApplications(Ljava/util/List;)V

    .line 832
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getDisallowedApps()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setDisallowedApplications(Ljava/util/List;)V

    .line 835
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v0, v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->ImportProfileConnections(Ljava/util/List;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private userSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 4

    .line 1415
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    if-ne v0, v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    .line 1420
    :cond_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->logUserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 1421
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->clearCurrentPrompt()V

    .line 1423
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->showVPNConnectionRequiredNotification(ZZ)V

    .line 1425
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-eq v0, v2, :cond_1

    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CERTIFICATE:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v0, v2, :cond_2

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->onInitiateConnectCancelled()V

    .line 1430
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    iget-boolean v2, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->MANUAL_IMPORT_PKCS12:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->ClearConnectingPrompt(Z)V

    .line 1433
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    if-nez v0, :cond_5

    const-string p1, "Skipping UserSubmt due to Unexpected null ApiService"

    .line 1434
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1436
    :cond_5
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->UserSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    const/4 p1, 0x0

    .line 1437
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized AgentDetachedCB()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 4020
    :try_start_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsAttached:Z

    .line 4021
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mFirstStateCBReceived:Z

    .line 4022
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Detach()V

    .line 4024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.VPN_AGENT_DETACHED_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    .line 4026
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->CheckDependencies(Z)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4027
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized BannerCB(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 3386
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;

    invoke-direct {v0, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;)V

    .line 3410
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->Banner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const-string v1, "BannerCB"

    const v2, 0x7f110264

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleVpnPrompt(Ljava/lang/Runnable;Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3411
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    .locals 8

    monitor-enter p0

    .line 3419
    :try_start_0
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;[ILjava/lang/String;[B[Ljava/lang/String;Z)V

    .line 3446
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->CertBanner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const-string p2, "CertBannerCB"

    const p3, 0x7f110265

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v7, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleVpnPrompt(Ljava/lang/Runnable;Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3447
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ClientCertificateCB([[B)V
    .locals 4

    monitor-enter p0

    .line 3981
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->ClearCerts()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3984
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 3986
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->AddCertificate([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3992
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 3997
    :try_start_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;

    invoke-interface {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4007
    :catch_0
    :try_start_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "Exception on ClientCertificateCB"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4001
    :catch_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string v3, "RemoteException on ClientCertificateCB"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4010
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    .line 4014
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string/jumbo v2, "unexpected exception thrown why trying to Broadcast ClientCertificateCB"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4016
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized DeliverWebLaunchHostCB(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 3613
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 3614
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3616
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "Automatic connect detected, transitioning state..."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnConnectRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3619
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized EventAvailable()V
    .locals 0

    monitor-enter p0

    .line 3977
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized ExitNoticeCB(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "exitNoticeCB "

    monitor-enter p0

    .line 3641
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ret code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 3642
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3643
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ImportL10nArchiveCB(Z)V
    .locals 4

    monitor-enter p0

    .line 1951
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 1955
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastServiceReady()V

    :cond_0
    if-nez p1, :cond_1

    .line 1960
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "l10n.zip"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1961
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v3, "Import L10n Archive Failed."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1965
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v3, "Successfully imported localization data."

    invoke-static {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1970
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1973
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;->RestoreDefaultL10nDataCB(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1975
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1979
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string/jumbo v2, "unexpected exception thrown when broadcasting ImportL10nArchiveCB"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1981
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized ImportPKCS12ResultCB([BLjava/lang/String;)V
    .locals 4

    const-string v0, "ImportPKCS12ResultCB "

    monitor-enter p0

    .line 4031
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4033
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->IsImportInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4035
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v0, "ignoring ImportPKCS12 result because no import was requested"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4036
    monitor-exit p0

    return-void

    .line 4039
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertImporter:Lcom/cisco/anyconnect/vpn/android/service/CertImporter;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/CertImporter;->OnImportCompleted()V

    .line 4041
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastImportPkcs12Result([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4042
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized ImportSGL10nDataCB(Z)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1987
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "Import server l10n data failed."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1992
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1995
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;

    invoke-interface {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/IImportListener;->ImportServerL10nDataCB(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1997
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2001
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string/jumbo v2, "unexpected exception thrown while broadcasting ImportSGL10nDataCB"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2003
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized InstallEndCB(Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;)V
    .locals 6

    const-string v0, "Failed to request default localization install: "

    const-string v1, "shutting down due to install error code: "

    const-string v2, "InstallEndCB: "

    monitor-enter p0

    :try_start_0
    const-string v3, "VpnService"

    .line 4466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 4468
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnService$17;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$helpers$NativeComponentInstaller$ReturnCode:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x7f11033d

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_4

    const/4 v0, 0x2

    if-eq v2, v0, :cond_3

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    .line 4514
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 4509
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->showClearAppDataMsg()V

    goto :goto_0

    :cond_1
    const v0, 0x7f110114

    .line 4505
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f11011b

    .line 4502
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const v0, 0x7f11011d

    .line 4499
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4518
    :goto_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4519
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v5}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 4520
    invoke-direct {p0, v0, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4521
    monitor-exit p0

    return-void

    .line 4471
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->setNativeComponentDataDir()V

    .line 4473
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->attach()Z

    move-result p1

    if-nez p1, :cond_5

    .line 4478
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v5}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 4479
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "Shutting down because attach failed."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 4480
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 4481
    invoke-direct {p0, p1, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4482
    monitor-exit p0

    return-void

    .line 4486
    :cond_5
    :try_start_2
    invoke-direct {p0, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->restoreDefaultL10n(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object p1

    .line 4487
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v1, p1, :cond_6

    .line 4489
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1, v5}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->setInitializing(Z)V

    .line 4490
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4491
    invoke-direct {p0, p1, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4492
    monitor-exit p0

    return-void

    .line 4495
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->bindNchs()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4496
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized InstallStartCB(Ljava/lang/String;)V
    .locals 3

    const-string v0, "InstallStartCB: "

    monitor-enter p0

    :try_start_0
    const-string v1, "VpnService"

    .line 4461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4462
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 3728
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3729
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V
    .locals 6

    monitor-enter p0

    .line 3648
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;

    invoke-direct {v0, p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;-><init>(Lcom/cisco/anyconnect/vpn/jni/MessageType;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ACNoticeParser;->parse()Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    move-result-object p3

    if-nez p3, :cond_0

    const-string p1, "Bad notice data"

    .line 3651
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3652
    monitor-exit p0

    return-void

    .line 3655
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mRecentNotices:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    invoke-virtual {v0, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;->add(Ljava/lang/Object;)Z

    .line 3657
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    if-ne v0, p2, :cond_1

    .line 3659
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getDefaultPromptHandlerIntent()Landroid/content/Intent;

    move-result-object p3

    const-string v0, "NoticeInfo"

    .line 3660
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    invoke-direct {v2, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;-><init>(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3661
    invoke-virtual {p0, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->startActivity(Landroid/content/Intent;)V

    .line 3663
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3664
    monitor-exit p0

    return-void

    .line 3669
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3674
    :try_start_3
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    invoke-interface {v3, p3}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->NoticeCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3684
    :catch_0
    :try_start_4
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VpnService"

    const-string v5, "Exception occurred when attempting to deliver NoticeCB"

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3678
    :catch_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VpnService"

    const-string v5, "RemoteException occurred when attempting to deliver NoticeCB"

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3687
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 3691
    :try_start_5
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string/jumbo v4, "unexpected exception thrown why trying to Broadcast NoticeCB"

    invoke-static {v2, v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3696
    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLogListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 3701
    :try_start_7
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLogListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;

    invoke-interface {v2, p3}, Lcom/cisco/anyconnect/vpn/android/service/ILogUpdateListener;->AppMessageCB(Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 3711
    :catch_3
    :try_start_8
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "Exception occurred when attempting to deliver LogUpdateCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3705
    :catch_4
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "RemoteException occurred when attempting to deliver LogUpdateCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3714
    :cond_3
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLogListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catch_5
    move-exception p3

    .line 3718
    :try_start_9
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string/jumbo v2, "unexpected exception thrown why trying to Broadcast AppMessageCB"

    invoke-static {v0, v1, v2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3721
    :goto_5
    new-instance p3, Landroid/content/Intent;

    const-string v0, "NoticeInfo"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "NoticeInfo"

    .line 3722
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;

    invoke-direct {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/NoticeInfo;-><init>(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3723
    invoke-virtual {p0, p3}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3724
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public declared-synchronized OnActiveConnectionRemoved()V
    .locals 2

    monitor-enter p0

    .line 4595
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 4597
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mClearActiveOnDisconnect:Z

    goto :goto_0

    .line 4601
    :cond_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->actuallyClearActiveConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4603
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnConnectionsChanged()V
    .locals 5

    monitor-enter p0

    .line 4609
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    .line 4610
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->isAlwaysOnEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Unknown:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getInitateConnectState()Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    move-result-object v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetActive()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "initiating deferred always-on connection"

    .line 4611
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4612
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connectToActive(Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v0

    .line 4613
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v1, v0, :cond_0

    const-string v0, "Failed to initiate connection"

    .line 4614
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4618
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectionListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4623
    :try_start_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectionListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-interface {v1, v3}, Lcom/cisco/anyconnect/vpn/android/service/IConnectionListener;->ConnectionUpdateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnConnectionList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4633
    :catch_0
    :try_start_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "Exception occurred when attempting to deliver ConnectionUpdateCB"

    invoke-static {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4627
    :catch_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "RemoteException occurred when attempting to deliver ConnectionUpdateCB"

    invoke-static {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4636
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectionListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    .line 4640
    :try_start_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string/jumbo v3, "unexpected exception thrown why trying to Broadcast ConnectionUpdateCB"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4643
    :goto_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->broadcastActiveConnection()V

    .line 4645
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->-$$Nest$mpersist(Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4646
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public declared-synchronized SCEPEnrollExitCB()V
    .locals 5

    monitor-enter p0

    .line 4245
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnScepFinish()V

    .line 4247
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4252
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->SCEPEnrollExitCB()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4262
    :catch_0
    :try_start_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "Exception on SCEPEnrollExitCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4256
    :catch_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "RemoteException on SCEPEnrollExitCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized SCEPEnrollStartCB()V
    .locals 5

    monitor-enter p0

    const v0, 0x7f11022d

    .line 4219
    :try_start_0
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4220
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnScepStart()V

    .line 4222
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4227
    :try_start_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;

    invoke-interface {v2}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener;->SCEPEnrollStartCB()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4237
    :catch_0
    :try_start_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "Exception on SCEPEnrollStartCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4231
    :catch_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "RemoteException on SCEPEnrollStartCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4240
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized ServiceReadyCB()V
    .locals 0

    monitor-enter p0

    .line 3734
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized StateCB(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    .locals 11

    const-string v0, "processing uri params: state="

    const-string v1, "Could not connect: "

    const-string v2, "Unexpected remoteException when getting connection: "

    const-string v3, "hasExistingConnectionsChanged="

    const-string v4, "SetActive failed:"

    const-string v5, "state="

    monitor-enter p0

    .line 3738
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 3740
    iget-boolean v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mFirstStateCBReceived:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 3743
    :goto_0
    iput-boolean v7, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mFirstStateCBReceived:Z

    .line 3746
    sget-object v8, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v9

    if-ne v8, v9, :cond_1

    sget-object v8, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v8, p1, :cond_1

    .line 3748
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v0, "Ignoring rogue DISCONNECTING state when we\'re already DISCONNECTED"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3749
    monitor-exit p0

    return-void

    .line 3752
    :cond_1
    :try_start_1
    sget-object v8, Lcom/cisco/anyconnect/vpn/jni/VPNState;->SSOPOLLING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v9

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/cisco/anyconnect/vpn/jni/VPNState;->SSOPOLLING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v8, p1, :cond_2

    .line 3754
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    .line 3757
    :cond_2
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v8, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->UpdateState(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    .line 3759
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p2, p1, :cond_3

    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mClearActiveOnDisconnect:Z

    if-eqz p2, :cond_3

    .line 3761
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->actuallyClearActiveConnection()V

    .line 3764
    :cond_3
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const/4 v8, 0x0

    if-ne p2, p1, :cond_5

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingSetActiveOnDisconnect:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz p2, :cond_5

    .line 3767
    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v9, p2, p1, v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->SetActive(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/VPNState;Z)Z

    move-result p2

    if-nez p2, :cond_4

    .line 3769
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v9, "VpnService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingSetActiveOnDisconnect:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v9, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3771
    :cond_4
    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingSetActiveOnDisconnect:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 3777
    :cond_5
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq p2, p1, :cond_8

    if-eqz v5, :cond_6

    goto :goto_1

    .line 3820
    :cond_6
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p2, p1, :cond_b

    .line 3824
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetLastState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-eq p2, v1, :cond_7

    .line 3826
    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    .line 3827
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    .line 3830
    :cond_7
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingDisconnect:Z

    if-eqz p2, :cond_b

    .line 3832
    iput-boolean v6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingDisconnect:Z

    .line 3833
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->disconnect()Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    goto/16 :goto_2

    .line 3779
    :cond_8
    :goto_1
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 3782
    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    .line 3783
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "VpnService"

    const-string v6, "has Connection pending to be active"

    invoke-static {v4, v5, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3786
    :try_start_2
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-virtual {v4, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->GetConnection(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v4

    if-nez v4, :cond_9

    .line 3789
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VpnService"

    const-string v5, "Unexpected null pending connection"

    invoke-static {v1, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->resetVpnState()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3791
    monitor-exit p0

    return-void

    .line 3794
    :cond_9
    :try_start_3
    iget-boolean v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    invoke-direct {p0, v4, v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->connect(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;Z)Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    move-result-object v5

    .line 3795
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    if-eq v6, v5, :cond_b

    .line 3797
    sget-object v6, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v9, "VpnService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v9, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110138

    invoke-static {v5}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    .line 3799
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->resetVpnState()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3800
    monitor-exit p0

    return-void

    .line 3805
    :catch_0
    :try_start_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "VpnService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v4, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3807
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->resetVpnState()V

    goto :goto_2

    .line 3812
    :cond_a
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p2, p1, :cond_b

    .line 3816
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->resetVpnState()V

    .line 3839
    :cond_b
    :goto_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetLastState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-ne p2, v1, :cond_d

    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq p2, p1, :cond_c

    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p2, p1, :cond_d

    .line 3842
    :cond_c
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->updateHostsFromProfile()Z

    move-result p2

    .line 3843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 3851
    :cond_d
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-ne p2, v1, :cond_e

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetLastConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v1

    if-eq p2, v1, :cond_f

    :cond_e
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 3852
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-ne p2, v1, :cond_12

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetLastConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v1

    if-ne p2, v1, :cond_12

    .line 3855
    :cond_f
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCurrentlyProcessingUri:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    if-ne p2, v1, :cond_12

    .line 3859
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    if-nez p2, :cond_11

    .line 3861
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-ne p2, v1, :cond_10

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnSuccessUriList:Ljava/util/List;

    goto :goto_3

    :cond_10
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mOnFailureUriList:Ljava/util/List;

    .line 3862
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " action="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 3863
    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->processUriParams(Ljava/util/List;)V

    goto :goto_4

    :cond_11
    const-string p1, "deferring process URI parameters for connection change"

    .line 3867
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 3876
    :cond_12
    :goto_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-eq p1, p2, :cond_14

    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-ne p1, p2, :cond_13

    goto :goto_5

    .line 3882
    :cond_13
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/NetworkChangeReceiver;

    invoke-direct {p2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_6

    .line 3878
    :cond_14
    :goto_5
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance p2, Landroid/content/ComponentName;

    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/NetworkChangeReceiver;

    invoke-direct {p2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 3885
    :goto_6
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    if-ne p1, p2, :cond_16

    .line 3888
    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mTunneledApps:Ljava/util/List;

    .line 3889
    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mBlockedApps:Ljava/util/List;

    .line 3891
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSingleLogoutURL:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 3892
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0xd9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3893
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3897
    :cond_15
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    if-eqz p1, :cond_16

    const-string p1, "cancelling mPendingConnectPrompt"

    .line 3898
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3899
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    iput-boolean v7, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    .line 3900
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->userSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 3901
    iput-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    .line 3903
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPromptHandlerMgr:Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_16

    .line 3906
    :try_start_5
    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->CancelUserPromptCB()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :catch_1
    move-exception p1

    :try_start_6
    const-string p2, "CancelUserPromptCB failed"

    .line 3908
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3915
    :cond_16
    :goto_7
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object p1

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne p1, p2, :cond_17

    .line 3917
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_17

    .line 3920
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForegroundMgr:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    const/16 p2, 0xdac

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->scheduleStopForeground(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3923
    :cond_17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public StatsCB(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 5

    .line 3927
    monitor-enter p0

    .line 3928
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    .line 3929
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    invoke-direct {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    if-eqz v0, :cond_0

    .line 3935
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->hasProtocolInfo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3937
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLastStats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;

    iput-object v0, v1, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;->protocolInfo:[Lcom/cisco/anyconnect/vpn/jni/ProtocolInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3943
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStatsListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3948
    :try_start_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStatsListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    invoke-direct {v3, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    invoke-interface {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener;->StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3958
    :catch_0
    :try_start_3
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "Exception occurred when attempting to deliver StatsCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3952
    :catch_1
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "VpnService"

    const-string v4, "RemoteException occurred when attempting to deliver StatsCB"

    invoke-static {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3961
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStatsListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 3965
    :try_start_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    const-string/jumbo v3, "unexpected exception thrown why trying to Broadcast StatsCB"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3968
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_STATS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "VpnStats"

    .line 3969
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    invoke-direct {v2, p1}, Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;-><init>(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3970
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3971
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized SwitchActiveConnection(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 4652
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v1, "Unexpected null connection name"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4653
    monitor-exit p0

    return-void

    .line 4656
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->switchActiveConnection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4657
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized UserPromptCB(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 2

    monitor-enter p0

    .line 3519
    :try_start_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->logPrompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 3523
    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isEmpty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasAuthenticationError:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->hasEnrollmentCA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3525
    iput-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->isCancelled:Z

    .line 3526
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->userSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 3527
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->message:Ljava/lang/String;

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3528
    monitor-exit p0

    return-void

    .line 3531
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->SINGLELOGOUT:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v0, v1, :cond_1

    .line 3533
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleSLOPrompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    .line 3534
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->userSubmit(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3536
    monitor-exit p0

    return-void

    .line 3541
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->type:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mApiService:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->Quarantined:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->IsOperatingMode(Lcom/cisco/anyconnect/vpn/jni/OperatingMode;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 3543
    monitor-exit p0

    return-void

    .line 3546
    :cond_2
    :try_start_3
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectPrompt:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;

    .line 3549
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->allowSavedCredentials(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;->allowSaveCredentials:Z

    .line 3550
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleCredentialprompt(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3551
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized WMHintCB(Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V
    .locals 4

    const-string v0, "WMHintCB "

    const-string v1, "VpnService is shutting down due to unexpected WMHintCB: "

    monitor-enter p0

    .line 3623
    :try_start_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/WMHint;->QUIT:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    if-ne p1, v2, :cond_0

    .line 3625
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " reason:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f11033e

    .line 3626
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->initiateShutdown(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3628
    :cond_0
    sget-object p2, Lcom/cisco/anyconnect/vpn/jni/WMHint;->CLOSECREDENTIALPOPUP:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    if-ne p1, p2, :cond_1

    .line 3630
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v0, "WMHint.CLOSECREDENTIALPOPUP"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3631
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.cisco.anyconnect.vpn.android.CREDENTIAL_ACTIVITY_CLOSE_INTENT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3635
    :cond_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/WMHint;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " received but not handled"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3637
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public applyRestrictions()V
    .locals 14

    .line 1681
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v0, :cond_0

    const-string v0, "deferring applyRestrictions until NCHS connected"

    .line 1683
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1687
    :cond_0
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAndroidForWork()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1694
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1697
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 1699
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionsOfType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)Ljava/util/List;

    move-result-object v0

    .line 1700
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "No restrictions, clearing work connections"

    .line 1702
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1703
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Delete(Ljava/util/List;)V

    .line 1705
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 1709
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mKeyChainImporter:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 1710
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->cancel(Z)Z

    .line 1713
    :cond_4
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-interface {v3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v3

    new-instance v4, Lcom/cisco/anyconnect/vpn/android/service/VpnService$8;

    invoke-direct {v4, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$8;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;-><init>(Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mKeyChainImporter:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    .line 1723
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1726
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1727
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Android_Work:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-virtual {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->GetAllConnectionsOfType(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)Ljava/util/List;

    move-result-object v3

    .line 1728
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 1731
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1735
    :cond_5
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->getActiveConnection()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object v3

    const/4 v5, 0x0

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 1736
    :goto_1
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getConnections()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;

    .line 1737
    iget-boolean v9, v8, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->isActive:Z

    if-eqz v9, :cond_7

    .line 1738
    iget-object v7, v8, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->vpnConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v7}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v7

    .line 1741
    :cond_7
    iget-object v9, v8, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->vpnConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    if-eqz v9, :cond_9

    .line 1743
    iget-object v8, v8, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->vpnConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-virtual {v9, v8}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->Update(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)V

    .line 1745
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v8, v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v8

    if-eqz v8, :cond_8

    .line 1748
    sget-object v10, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v11, "VpnService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to update work connection name="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " stat="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v11, v8}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating work conn: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1753
    invoke-virtual {v9}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1755
    :cond_9
    iget-object v8, v8, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser$ManagedConnection;->vpnConnection:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1759
    :cond_a
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 1760
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding new work conn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1761
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v8, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v8

    if-eqz v8, :cond_b

    .line 1764
    sget-object v9, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v10, "VpnService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to save work connection name="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " stat="

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v10, v6}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1768
    :cond_c
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 1769
    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v6, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->IsActive(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v6

    .line 1771
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleting old work conn: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1772
    iget-object v8, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v8, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Delete(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)Z

    move-result v8

    if-nez v8, :cond_e

    .line 1774
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete old work conn: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    if-eqz v6, :cond_d

    const-string v3, "Deleted active work connection"

    .line 1776
    invoke-static {p0, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_f
    if-eqz v7, :cond_10

    if-eqz v3, :cond_10

    .line 1782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting managed config as active: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1783
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1, v7, v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->SetActive(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/VPNState;Z)Z

    .line 1787
    :cond_10
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isBlockUntrustedServersSet()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1788
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getBlockUntrustedServers()Z

    move-result v1

    .line 1789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying managed config block untrusted servers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1791
    :try_start_4
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    const-string v3, "BlockUntrustedServers"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "SetSetting for block untrusted servers failed"

    .line 1792
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_5
    const-string v2, "Exception setting block untrusted servers"

    .line 1795
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1799
    :cond_11
    :goto_5
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isRemoteControlModeSet()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1800
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getRemoteControlMode()Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v1

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying managed config remote control mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1803
    :try_start_6
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    const-string v3, "RemoteControl"

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "SetSetting for remote control mode failed"

    .line 1804
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    :catch_1
    move-exception v1

    :try_start_7
    const-string v2, "Exception setting remote control mode"

    .line 1807
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1811
    :cond_12
    :goto_6
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isFipsSet()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1812
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getFips()Z

    move-result v1

    .line 1813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying managed config fips mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1815
    :try_start_8
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->SetFipsMode(Z)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "SetFipsMode failed"

    .line 1816
    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1818
    :cond_13
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    const-string v3, "Fips"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "SetSetting for fips failed"

    .line 1819
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catch_2
    move-exception v1

    :try_start_9
    const-string v2, "Exception in setFipsMode"

    .line 1822
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1826
    :cond_14
    :goto_7
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isStrictCertSet()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1827
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getStrictCert()Z

    move-result v1

    .line 1828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying managed config strict cert check: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1830
    :try_start_a
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetStrictMode(Z)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "SetStrictMode failed"

    .line 1831
    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    :cond_15
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    const-string v3, "Strict_Mode"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "SetSetting for strict mode failed"

    .line 1834
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_8

    :catch_3
    move-exception v1

    :try_start_b
    const-string v2, "Exception in setStrictMode"

    .line 1837
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1841
    :cond_16
    :goto_8
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isCertRevocationSet()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1842
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getCertRevocation()Z

    move-result v1

    .line 1843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Applying managed config cert Revocation checking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1845
    :try_start_c
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetRevocationEnabled(Z)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "SetRevocationEnabled failed"

    .line 1846
    invoke-static {p0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1848
    :cond_17
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetPrivateApi()Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;

    move-result-object v2

    const-string v3, "Ocsp"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/service/IPrivateVpnService;->SetSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "SetSetting for certificate revocation failed"

    .line 1849
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_9

    :catch_4
    move-exception v1

    :try_start_d
    const-string v2, "Exception in setCertificateRevocation"

    .line 1852
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1856
    :cond_18
    :goto_9
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;->GetCurrentProfileContents()Ljava/lang/String;

    move-result-object v1

    .line 1857
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getProfile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 1859
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1860
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->shouldReplaceExistingProfile()Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "Skipping managed config profile import because existing profile is present"

    .line 1861
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    const-string v1, "Importing profile from managed config."

    .line 1863
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "profile.xml"

    .line 1864
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getProfile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->importProfileToApi(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_1a
    const-string v1, "Skipping profile import because it has not changed"

    .line 1867
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1871
    :cond_1b
    :goto_a
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->shouldApplyPerappToProfile()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "applying per-app rules to profile-imported hosts"

    .line 1872
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1873
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;->Profile_Imported:Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getConnections(Lcom/cisco/anyconnect/vpn/android/service/ConnectionType;)Ljava/util/List;

    move-result-object v1

    .line 1874
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    .line 1875
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getAllowedApps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setTunnelApplications(Ljava/util/List;)V

    .line 1876
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getDisallowedApps()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->setDisallowedApplications(Ljava/util/List;)V

    .line 1877
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnections:Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;

    invoke-virtual {v3, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnectionListImpl;->Save(Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;)I

    move-result v3

    if-eqz v3, :cond_1c

    .line 1880
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v6, "VpnService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to apply per-app rules to conn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " stat="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v6, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1884
    :cond_1d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1886
    :try_start_e
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getKeychainAliases()Ljava/util/Set;

    move-result-object v1

    .line 1888
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 1889
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1890
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mKeyChainImporter:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    const-string v4, "android_work_certs"

    const-string v6, "CERTIFICATE_MDM_PROVISIONED_TAG"

    invoke-virtual {v3, v2, v4, v6}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->addCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 1892
    :cond_1e
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mKeyChainImporter:Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1895
    :cond_1f
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_d

    :catchall_1
    move-exception v0

    .line 1884
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    :catch_5
    move-exception v0

    const-string v1, "Failed to apply restrictions"

    .line 1899
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method

.method public declared-synchronized onActivePromptHandlerChange()V
    .locals 2

    monitor-enter p0

    .line 4381
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$15;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    .line 4396
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4397
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_KEY_DISABLE_NOTIFICATIONS"

    const/4 v1, 0x0

    .line 3362
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3364
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p1, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->EnableStateNotifications(Z)V

    .line 3367
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mVpnServiceImpl:Lcom/cisco/anyconnect/vpn/android/service/IVpnService$Stub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCreate()V
    .locals 11

    monitor-enter p0

    .line 1554
    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1555
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "VpnService is being created."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x58

    .line 1561
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const v7, 0x7f0800f6

    const v1, 0x7f1101fa

    .line 1565
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v1, 0x7f11015f

    .line 1566
    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "VpnService"

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;-><init>(Landroid/app/Service;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForegroundMgr:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    .line 1569
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    const-string v1, "VpnAgentService"

    invoke-direct {v0, v1, p0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    .line 1570
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->start()V

    .line 1572
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->destroyApiService()V

    .line 1574
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->acquireResources(Landroid/content/Context;)V

    .line 1576
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;->-$$Nest$mload(Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnConnectionListHandler;)V

    .line 1577
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertList:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;

    .line 1579
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mConnectionListenerList:Landroid/os/RemoteCallbackList;

    .line 1580
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStatsListenerList:Landroid/os/RemoteCallbackList;

    .line 1581
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    .line 1582
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mLogListenerList:Landroid/os/RemoteCallbackList;

    .line 1583
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mCertListenerList:Landroid/os/RemoteCallbackList;

    .line 1584
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mServiceStateListenerList:Landroid/os/RemoteCallbackList;

    .line 1585
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingListenerList:Landroid/os/RemoteCallbackList;

    .line 1586
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mImportListener:Landroid/os/RemoteCallbackList;

    .line 1587
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;-><init>(I)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mRecentNotices:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConstrainedLinkedList;

    .line 1588
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/helpers/IInstallNativeComponentsCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNativeInstaller:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    .line 1590
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;-><init>(Landroid/content/Context;Landroid/os/RemoteCallbackList;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 1591
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgrCB:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    .line 1592
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    invoke-direct {v0, p0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingMgr:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    const/4 v0, 0x0

    .line 1593
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mFirstStateCBReceived:Z

    .line 1595
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.cisco.anyconnect.vpn.android.PER_APP_APPS_ACTION"

    .line 1596
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.cisco.anyconnect.vpn.android.EULA_ACTION"

    .line 1597
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    .line 1598
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1599
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1600
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_START_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1603
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->CheckDependencies(Z)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object v0

    .line 1604
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleDependencyCheckResult(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 1606
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mWidgetBroadcaster:Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;->register(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1607
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "VpnService is being destroyed"

    .line 2079
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2080
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VpnService"

    const-string v2, "VpnService is shutting down."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mWidgetBroadcaster:Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/WidgetBroadcaster;->unregister(Landroid/content/Context;)V

    .line 2084
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2086
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNativeInstaller:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;

    if-eqz v0, :cond_0

    .line 2088
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;->cancelInstall()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2093
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2100
    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->destroyApiService()V

    .line 2102
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->shutdown()V

    .line 2103
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mDependencyMgr:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->Destroy()V

    .line 2104
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mSettingMgr:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->Destroy()V

    .line 2106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_SHUTDOWN_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2108
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2109
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/GlobalAppHelpers;->releaseResources(Landroid/content/Context;)V

    .line 2111
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->stop()V

    .line 2113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2114
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4661
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$16;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string p2, "VpnService has been started: action="

    monitor-enter p0

    .line 2121
    :try_start_0
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForegroundMgr:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->startForeground()V

    .line 2125
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-ge p3, v0, :cond_0

    .line 2126
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mForegroundMgr:Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;

    const/16 v0, 0x3e8

    invoke-virtual {p3, v0}, Lcom/cisco/anyconnect/vpn/android/util/ForegroundServiceManager;->scheduleStopForeground(I)V

    :cond_0
    const/4 p3, 0x2

    if-eqz p1, :cond_e

    .line 2129
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 2135
    :cond_1
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsFirstStartCommand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2137
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "VpnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v2, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsFirstStartCommand:Z

    .line 2142
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->isAlwaysOnEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    .line 2143
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object p2

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne p2, v0, :cond_2

    const-string p2, "android.net.VpnService"

    .line 2144
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p2, "com.cisco.anyconnect.vpn.android.VPN_SERVICE_KEY_DISABLE_NOTIFICATIONS"

    .line 2148
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2150
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mStateMgr:Lcom/cisco/anyconnect/vpn/android/service/StateManager;

    invoke-virtual {p2, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->EnableStateNotifications(Z)V

    .line 2154
    :cond_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isShuttingDown()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2156
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "VpnService"

    const-string v0, "not handling start command because VpnService is shutting down"

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->toastShutdownMsg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2158
    monitor-exit p0

    return p3

    .line 2161
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.cisco.anyconnect.vpn.android.service.MMS_INTERFACE_UP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 2162
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.cisco.anyconnect.vpn.android.service.HIPRI_INTERFACE_UP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_4

    .line 2169
    :cond_5
    iget-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsAttached:Z

    if-nez p2, :cond_b

    .line 2171
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "VpnService"

    const-string v2, "not yet attached"

    invoke-static {p2, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f1100d6

    .line 2172
    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->doToast(Ljava/lang/CharSequence;)V

    .line 2175
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.cisco.anyconnect.vpn.android.ACTION_CONNECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 2177
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->getConnectionFromIntent(Landroid/content/Intent;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_0

    .line 2178
    :cond_6
    invoke-virtual {p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;

    const-string p2, "com.cisco.anyconnect.vpn.android.EXTRA_IS_WIDGET"

    .line 2181
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mIsWidgetInitiatedConnect:Z

    goto :goto_2

    .line 2183
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.VpnService"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2185
    invoke-static {p0}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->get(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2186
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/work/ManagedConfigParser;->isAlwaysOnUmbrellaOnly()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "Ignoring always-on for remote access due to managed config"

    .line 2188
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2189
    monitor-exit p0

    return p3

    .line 2193
    :cond_8
    :try_start_2
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->enableAlwaysOn()Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_1

    .line 2194
    :cond_9
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;->GetName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->mPendingConnectName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2197
    :cond_a
    :goto_2
    monitor-exit p0

    return p3

    .line 2200
    :cond_b
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.cisco.anyconnect.vpn.android.service.ACTION_RESUME_PROMPT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 2202
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleResumePrompt()V

    goto :goto_3

    .line 2206
    :cond_c
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleStartCommand(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2209
    :goto_3
    monitor-exit p0

    return p3

    .line 2164
    :cond_d
    :goto_4
    :try_start_4
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->MMSInterfaceUp()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2165
    monitor-exit p0

    return p3

    .line 2132
    :cond_e
    :goto_5
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onUnbind(Landroid/content/Intent;)Z
    .locals 0

    monitor-enter p0

    .line 3373
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->isShuttingDown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3377
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3380
    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
