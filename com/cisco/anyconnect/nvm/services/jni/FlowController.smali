.class public Lcom/cisco/anyconnect/nvm/services/jni/FlowController;
.super Ljava/lang/Object;
.source "FlowController.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "FlowController"

.field private static final MAX_ITERATION:I = 0x3

.field private static final NPA_PROFILE_ALREADY_ACTIVATED:I = -0x8

.field private static final NPA_START_FAILED:I = -0x13

.field private static final NPA_START_SUCCESS:I = 0x0

.field private static final RETRY_INTERVAL:I = 0xbb8

.field private static final STATE_CONSISTENCY_INTERVAL:I = 0x1388

.field private static curNativeState:I

.field private static prevNativeState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCounter:I

.field private mHandler:Landroid/os/Handler;

.field private mIntermediateFlowInterval:I

.field private mNativeStateRunnable:Ljava/lang/Runnable;

.field private mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

.field private mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

.field private mStartRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    .line 49
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    .line 37
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 38
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    .line 39
    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mCounter:I

    .line 50
    iput v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mIntermediateFlowInterval:I

    .line 107
    new-instance v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$1;-><init>(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController$2;-><init>(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNativeStateRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 56
    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Context is required for FlowController"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)I
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->start()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mCounter:I

    return p0
.end method

.method static synthetic access$102(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mCounter:I

    return p1
.end method

.method static synthetic access$108(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)I
    .locals 2

    .line 32
    iget v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mCounter:I

    return v0
.end method

.method static synthetic access$200(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/cisco/anyconnect/nvm/services/jni/FlowController;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->handleCollectiOn()V

    return-void
.end method

.method static synthetic access$600()I
    .locals 1

    .line 32
    sget v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0

    .line 32
    sput p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    return p0
.end method

.method static synthetic access$700()I
    .locals 1

    .line 32
    sget v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0

    .line 32
    sput p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    return p0
.end method

.method private handleCollectiOn()V
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isForegroundServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    const-class v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_ON:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    sput v1, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    .line 244
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    const-string v2, "serviceInitiatedCancel"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMPreferenceStore;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 245
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->cancelJob(Landroid/content/Context;I)V

    .line 246
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    const v2, 0x493e0

    const/16 v3, 0x3ea

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->schedulePeriodicJob(Landroid/content/Context;II)V

    .line 247
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private native registerFlowControllerInterface()I
.end method

.method private start()I
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isIntermediateFlowSupported(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "FlowController"

    if-eqz v0, :cond_2

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 211
    iget v2, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mIntermediateFlowInterval:I

    const/4 v3, 0x0

    const-string v4, "record_type"

    if-nez v2, :cond_0

    .line 212
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v5, 0x3c

    if-lt v2, v5, :cond_1

    const/16 v5, 0x168

    if-gt v2, v5, :cond_1

    .line 214
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Intermediate flow"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mIntermediateFlowInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "interval_value"

    .line 217
    iget v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mIntermediateFlowInterval:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    .line 219
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    :goto_0
    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {v3}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNVMProfileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->start(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    goto :goto_1

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNVMProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->start(Ljava/lang/String;)I

    move-result v0

    .line 229
    :goto_1
    sget-object v2, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NPA Profile Name : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 230
    invoke-virtual {v4}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNVMProfileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " NPA Start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private native unregisterFlowControllerInterface()I
.end method


# virtual methods
.method public clean()I
    .locals 4

    .line 87
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    .line 88
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    .line 89
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNativeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->unregisterFlowControllerInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 96
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "FlowController"

    const-string v3, " Error while unregistering FlowController "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public init()I
    .locals 4

    .line 69
    :try_start_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->registerFlowControllerInterface()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v2, "FlowController"

    const-string v3, " Error while registering FlowController "

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    .line 73
    :goto_0
    invoke-static {}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getInstance()Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/services/jni/NVMServiceJNI;->getProfileManager()Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    .line 75
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    sput v1, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    .line 76
    sget-object v1, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->UNKNOWN:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v1

    sput v1, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    return v0
.end method

.method public notifyNativeState(I)I
    .locals 6

    const-string v0, "notifyNativeState : "

    const-string v1, "prevState : "

    .line 294
    invoke-static {}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isForegroundServiceEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 295
    const-class v2, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isBackgroundExecutionLimited(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    sget v3, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    if-eq v3, p1, :cond_1

    .line 298
    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNativeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    sput p1, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    .line 300
    sget-object v3, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v4, "FlowController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->prevNativeState:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    const-string v3, "FlowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->curNativeState:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->COLLECTION_OFF:Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/nvm/utils/NVMConstants$NATIVE_STATE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 311
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNativeStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNativeStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    :cond_1
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public startFlow(I)I
    .locals 5

    .line 252
    sget-object v0, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " startFlow "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlowController"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mIntermediateFlowInterval:I

    .line 254
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->start()I

    move-result p1

    const/4 v0, 0x0

    .line 255
    iput v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mCounter:I

    .line 256
    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0xbb8

    if-nez p1, :cond_0

    .line 267
    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cisco/anyconnect/nvm/utils/NVMUtils;->isIntermediateFlowSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 268
    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/16 v3, -0x13

    if-eq p1, v3, :cond_2

    const/4 v3, -0x8

    if-eq p1, v3, :cond_1

    const/4 v3, -0x4

    if-eq p1, v3, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->handleCollectiOn()V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->stopFlow()I

    .line 275
    iget-object p1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v0
.end method

.method public stopFlow()I
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mNetworkAnalytics:Lcom/samsung/android/knox/net/nap/NetworkAnalytics;

    iget-object v1, p0, Lcom/cisco/anyconnect/nvm/services/jni/FlowController;->mProfileManager:Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/nvm/profilemanager/ProfileManager;->getNVMProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/nap/NetworkAnalytics;->stop(Ljava/lang/String;)I

    move-result v0

    .line 289
    sget-object v1, Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " NPA Stop : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FlowController"

    invoke-static {v1, v2, v0}, Lcom/cisco/anyconnect/acruntime/utils/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/acruntime/utils/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
