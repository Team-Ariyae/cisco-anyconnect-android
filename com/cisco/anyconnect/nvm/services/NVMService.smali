.class public Lcom/cisco/anyconnect/nvm/services/NVMService;
.super Landroid/app/Service;
.source "NVMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NVMService"


# instance fields
.field private mBinder:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;

.field private mCertificateManager:Lcom/cisco/anyconnect/acruntime/support/CertificateManager;

.field private mDeviceInfo:Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;

.field private mFlowController:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

.field private mForegroundMgr:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

.field private mHandler:Landroid/os/Handler;

.field private mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

.field private mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

.field private mNVMSettingsInfoInterface:Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;

.field private mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

.field private mNchsServiceConnection:Landroid/content/ServiceConnection;

.field private mNetworkInfo:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

.field private mNetworkMonitor:Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;

.field private mNetworkStateObserver:Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

.field private mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

.field private mRuntimeNetworkMonitor:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

.field private mServiceBound:Z

.field private mVPNState:Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mDeviceInfo:Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;

    .line 62
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mVPNState:Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;

    .line 63
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    .line 64
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkInfo:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

    .line 65
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mFlowController:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    .line 66
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mCertificateManager:Lcom/cisco/anyconnect/acruntime/support/CertificateManager;

    .line 67
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkStateObserver:Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

    .line 68
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 69
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    .line 70
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    .line 72
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsInfoInterface:Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;

    .line 73
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkMonitor:Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;

    .line 74
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mRuntimeNetworkMonitor:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mServiceBound:Z

    .line 80
    new-instance v0, Lcom/cisco/anyconnect/nvm/services/NVMService$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/services/NVMService$1;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mBinder:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;

    .line 354
    new-instance v0, Lcom/cisco/anyconnect/nvm/services/NVMService$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/services/NVMService$2;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/anyconnect/nvm/services/NVMService;)Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mForegroundMgr:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/cisco/anyconnect/nvm/services/NVMService;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mServiceBound:Z

    return p1
.end method

.method private bindNCHS()V
    .locals 3

    .line 349
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.android.nchs.aidl.INetworkComponentHostService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/cisco/anyconnect/nvm/services/NVMService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private clean()V
    .locals 5

    const-string v0, "NVMService"

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkInfo:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mVPNState:Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mFlowController:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    if-eqz v2, :cond_1

    .line 371
    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->clean()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mVPNState:Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->clean()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mFlowController:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    .line 372
    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->clean()I

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Cleaning up references failed. Ignoring."

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 377
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Clean up failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 5

    const-string v0, "NVMService"

    .line 312
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    if-nez v1, :cond_0

    .line 313
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    .line 317
    :cond_0
    :try_start_0
    new-instance v1, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 318
    new-instance v1, Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsInfoInterface:Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;

    .line 319
    new-instance v1, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    .line 320
    new-instance v2, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-direct {v2, p0, v3, v1}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;)V

    iput-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    .line 321
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->initialise()V

    .line 322
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->setAupManager(Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;)V

    .line 323
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->setProfileManager(Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)V

    .line 324
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->setNVMSettingsManager(Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;)V

    .line 325
    new-instance v1, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkInfo:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

    .line 326
    new-instance v1, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mVPNState:Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;

    .line 327
    new-instance v1, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mFlowController:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    .line 328
    new-instance v1, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;

    invoke-direct {v1}, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;-><init>()V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mCertificateManager:Lcom/cisco/anyconnect/acruntime/support/CertificateManager;

    .line 329
    new-instance v1, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkStateObserver:Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

    .line 330
    new-instance v1, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-direct {v1, p0, v2}, Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkMonitor:Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;

    .line 331
    new-instance v1, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mRuntimeNetworkMonitor:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    .line 332
    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkMonitor:Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->registerNetworkChangeListener(Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;)V

    .line 333
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mRuntimeNetworkMonitor:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->init()V

    .line 334
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.cisco.android.nchs.networkstateprovider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkStateObserver:Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 337
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkInfo:Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/common/NetworkInfoInterface;->init()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mVPNState:Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/common/VPNStateInfoInterface;->init()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mFlowController:Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->init()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mCertificateManager:Lcom/cisco/anyconnect/acruntime/support/CertificateManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/acruntime/support/CertificateManager;->init()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsInfoInterface:Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/common/NVMSettingsInfoInterface;->init()I

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Initializing NVM components is not successful, stopping NVM Agent"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 343
    :goto_0
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error while initializing NVM components : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->stopSelf()V

    :cond_2
    :goto_1
    return-void
.end method

.method private loadAgent()Z
    .locals 4

    :try_start_0
    const-string v0, "nvmagent"

    .line 383
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 386
    :goto_0
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading agent failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NVMService"

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    const-string p1, "NVMService"

    .line 294
    :try_start_0
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isACEulaAccepted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    new-instance v0, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMService;Lcom/cisco/anyconnect/nvm/services/NVMService$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object v0

    const-string v1, "ALL_REGISTERED_PROFILES_FOR_CLIENT"

    .line 301
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->stop(Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v1, "onBind : EULA is not accepted"

    invoke-static {v0, p1, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting agent failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->stopSelf()V

    .line 308
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mBinder:Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->migrateNVMFiles(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NVMService"

    if-nez v0, :cond_0

    .line 165
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "Migrate Failed"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;-><init>(Landroid/app/Service;Landroid/os/Handler;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mForegroundMgr:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    .line 174
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mDeviceInfo:Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;

    .line 177
    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/common/SystemInfoInterface;->init()I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->loadAgent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->init()V

    .line 179
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->bindNCHS()V

    .line 180
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "NVM service is created"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->stopSelf()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "NVMService"

    .line 247
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelNotification(Landroid/content/Context;I)V

    .line 249
    iget-boolean v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mServiceBound:Z

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNchsServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/nvm/services/NVMService;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 251
    iput-boolean v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mServiceBound:Z

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mRuntimeNetworkMonitor:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {v1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->reset()V

    .line 256
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkMonitor:Lcom/cisco/anyconnect/nvm/receivers/NetworkMonitor;

    if-eqz v1, :cond_1

    .line 257
    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mRuntimeNetworkMonitor:Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;

    invoke-virtual {v2, v1}, Lcom/cisco/anyconnect/acruntime/network/RuntimeNetworkMonitor;->unregisterNetworkChangeListener(Lcom/cisco/anyconnect/acruntime/network/INetworkChangeListener;)V

    .line 262
    :cond_1
    invoke-static {}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->getInstance()Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/acruntime/handler/ACRuntimeAsyncHandler;->reset()V

    .line 263
    invoke-static {}, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->getInstance()Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/handler/NVMAsyncHandler;->reset()V

    .line 265
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->onDestroy()V

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    if-eqz v1, :cond_3

    .line 271
    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->notifyShutdown()V

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkStateObserver:Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNetworkStateObserver:Lcom/cisco/anyconnect/nvm/observers/NetworkStateObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 279
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    if-eqz v1, :cond_5

    .line 280
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "On Destroy, stopping NVM Agent"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->stopNVMAgent()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 284
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping agent failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->clean()V

    .line 287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string/jumbo p2, "userpref_exportonmobiledata"

    .line 190
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 191
    iget-object p3, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mForegroundMgr:Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;

    invoke-virtual {p3}, Lcom/cisco/anyconnect/nvm/utils/ForegroundServiceManager;->startForeground()V

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "eula_status"

    .line 196
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {p0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->setACEulaAccepted(Landroid/content/Context;)V

    .line 202
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 204
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMSettingsManager:Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;

    invoke-virtual {v0, p2}, Lcom/cisco/anyconnect/nvm/utils/NVMSettingsManager;->setAllowExportingOnMeteredNetwork(Z)V

    .line 205
    iget-object p2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMServiceJNIObj:Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p2}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->onConsentChanged()V

    :cond_2
    const-string p2, "aup_displayed"

    .line 211
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 213
    iget-object p2, p0, Lcom/cisco/anyconnect/nvm/services/NVMService;->mNVMAupManager:Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;

    invoke-virtual {p2, p1}, Lcom/cisco/anyconnect/nvm/utils/NVMAupManager;->setAupDisplayed(Z)V

    .line 217
    :cond_3
    new-instance p1, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;-><init>(Lcom/cisco/anyconnect/nvm/services/NVMService;Lcom/cisco/anyconnect/nvm/services/NVMService$1;)V

    sget-object p2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, p3, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Lcom/cisco/anyconnect/nvm/services/NVMService$StartAgentTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    sget-object p2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to communicate with Agent "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "NVMService"

    .line 220
    invoke-static {p2, p3, p1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/NVMService;->stopSelf()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
