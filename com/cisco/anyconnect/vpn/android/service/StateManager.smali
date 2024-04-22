.class Lcom/cisco/anyconnect/vpn/android/service/StateManager;
.super Ljava/lang/Object;
.source "StateManager.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "StateManager"

.field private static final INITIALIZATION_TIMEOUT_MS:I = 0xea60


# instance fields
.field private final OnInitializeTimeout:Ljava/lang/Runnable;

.field private mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHaveReceivedAgentState:Z

.field private mInfoListenerList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInitiateConnectState:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

.field private mIsBindingToNCHS:Z

.field private mIsScepInProgress:Z

.field private mLastConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

.field private mLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field private mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

.field private mNCHSConnection:Landroid/content/ServiceConnection;

.field private final mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

.field private mPromptTitle:Ljava/lang/String;

.field private mShowNotifications:Z

.field private mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field private mStateString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHaveReceivedAgentState(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHaveReceivedAgentState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNCHSConnection(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNchsShutdownListener(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPromptTitle(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHaveReceivedAgentState(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHaveReceivedAgentState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBindingToNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsBindingToNCHS:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostPromptNotification(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postPromptNotification(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpostStateNotification(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postStateNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/StateManager;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/RemoteCallbackList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;",
            ">;)V"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnInitializeTimeout:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    .line 148
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/StateManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    .line 349
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHaveReceivedAgentState:Z

    .line 351
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    .line 352
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const p1, 0x7f1102ba

    .line 353
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mStateString:Ljava/lang/String;

    .line 354
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const/4 p1, 0x1

    .line 357
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mShowNotifications:Z

    .line 359
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    return-void
.end method

.method private bindToNCHS()V
    .locals 4

    .line 367
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsBindingToNCHS:Z

    if-eqz v0, :cond_0

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_1

    return-void

    .line 379
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Binding to NCHS"

    .line 381
    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsBindingToNCHS:Z

    if-nez v0, :cond_2

    .line 386
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "StateManager"

    const-string v2, "Could not bind to NCHS, will not be able to update state"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private postPromptNotification(Ljava/lang/String;)V
    .locals 6

    const-string v0, "UpdateComponentState returned non Success code: "

    const-string v1, "postPromptNotification"

    const-string v2, "StateManager"

    .line 393
    invoke-static {v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsScepInProgress:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne v1, v3, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnConnectRequest()V

    .line 404
    :cond_0
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mShowNotifications:Z

    if-nez v1, :cond_1

    return-void

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v1, :cond_3

    .line 411
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "delaying prompt notification, because we are not bound to the NCHS"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    .line 414
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsBindingToNCHS:Z

    if-nez p1, :cond_2

    .line 416
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    :cond_2
    return-void

    .line 424
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    sget-object v5, Lcom/cisco/android/nchs/aidl/NCHSState;->ATTENTION:Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-direct {v4, v5}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    invoke-interface {v1, v3, p1, v4}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p1

    .line 425
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v1, p1, :cond_4

    .line 427
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 433
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "RemoteException while trying to set NCHS component state"

    invoke-static {v0, v2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private postStateNotification()V
    .locals 6

    const-string v0, "UpdateComponentState returned non Success code: "

    .line 289
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mShowNotifications:Z

    if-nez v1, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    const-string v2, "StateManager"

    if-nez v1, :cond_1

    .line 296
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Could not post state notification due to null NCHS binder"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    return-void

    .line 306
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne v1, v3, :cond_2

    .line 308
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSState;->TRANSITION:Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-direct {v1, v3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    const v3, 0x7f110213

    .line 309
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 311
    :cond_2
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-ne v1, v3, :cond_3

    .line 313
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSState;->TRANSITION:Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-direct {v1, v3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    const v3, 0x7f110215

    .line 314
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 316
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v1, v3, :cond_4

    .line 318
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSState;->ACTIVE:Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-direct {v1, v3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    const v3, 0x7f110212

    .line 319
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 321
    :cond_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v1, v3, :cond_5

    .line 323
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;

    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    invoke-direct {v1, v3}, Lcom/cisco/android/nchs/aidl/NCHSStateParcel;-><init>(Lcom/cisco/android/nchs/aidl/NCHSState;)V

    const v3, 0x7f110214

    .line 324
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    move-object v3, v1

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v3, :cond_6

    .line 332
    :try_start_0
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3, v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UpdateComponentState(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/NCHSStateParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    .line 333
    sget-object v3, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v3, v1, :cond_6

    .line 335
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 341
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException while trying to set NCHS component state"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method private sendConnectInProgressIntent(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 3

    const-string v0, "StateManager"

    const-string v1, "sendConnectInProgressIntent"

    .line 166
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_CONNECT_IN_PROGRESS"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "State"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 175
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v0}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Tile service exception"

    .line 183
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string p1, "Tile service called from work profile, ignoring"

    .line 179
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendStateUpdateIntent(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    .locals 2

    const-string v0, "StateManager"

    const-string v1, "sendStateUpdateIntent"

    .line 190
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.UPDATE_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-direct {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;-><init>(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    const-string p1, "StateInfo"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 193
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_0

    .line 198
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Tile service exception"

    .line 206
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    const-string p1, "Tile service called from work profile, ignoring"

    .line 202
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateConnectProgressState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StateManager"

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mLastConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 226
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updated connect progress state current="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " last="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mLastConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 229
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)Z

    .line 231
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHaveReceivedAgentState:Z

    .line 237
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    const/4 v2, 0x0

    if-ne v0, p1, :cond_2

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v0, :cond_1

    const-string v0, "Can\'t disable yubikey store due to null NCHS"

    .line 241
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    goto :goto_0

    .line 248
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNCSS()Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;->EnableYubikey(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Failed to disable yubikey store"

    .line 252
    invoke-static {p0, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->sendConnectInProgressIntent(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 261
    :try_start_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    if-ge v2, p1, :cond_3

    .line 266
    :try_start_2
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 276
    :try_start_3
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "Exception occurred when attempting to deliver ConnectInProgressCB"

    invoke-static {v3, v1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 270
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "RemoteException occurred when attempting to deliver ConnectInProgressCB"

    invoke-static {v3, v1, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 283
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string/jumbo v2, "unexpected exception thrown why trying to Broadcast ConnectInProgressCB"

    invoke-static {v0, v1, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private updateInitiateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)V
    .locals 2

    .line 212
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInitiateConnectState:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    .line 214
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->updateInitateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)Z

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.INITIATE_VPN_STATE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "new_state"

    .line 217
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    new-instance p1, Lcom/cisco/anyconnect/common/ACBroadcastManager;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/cisco/anyconnect/common/ACBroadcastManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/common/ACBroadcastManager;->sendImplicitBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized ClearConnectingPrompt(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 669
    :try_start_0
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 679
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postStateNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized EnableStateNotifications(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "StateManager"

    const-string v1, "EnableStateNotifications"

    .line 635
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mShowNotifications:Z

    if-eqz p1, :cond_0

    .line 639
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postStateNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 1

    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetLastConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    .locals 1

    monitor-enter p0

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mLastConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetLastState()Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    monitor-enter p0

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized GetState()Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .locals 1

    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized IsScepInProgress()Z
    .locals 1

    monitor-enter p0

    .line 566
    :try_start_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsScepInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnConnectRequest()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "OnConnectRequest"

    .line 536
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 537
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mShowNotifications:Z

    if-eqz v0, :cond_0

    .line 539
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    .line 541
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    const-string v2, "AnyConnect"

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    .line 549
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 550
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateInitiateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)V

    .line 551
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postStateNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnDisconnectRequest()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "StateManager"

    const-string v1, "OnDisconnect"

    .line 571
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->IsScepInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    .line 581
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    const-string v2, "AnyConnect"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    .line 591
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-eq v1, v2, :cond_1

    .line 593
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    goto :goto_0

    .line 597
    :cond_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 598
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v2, "Disconnected"

    invoke-virtual {p0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->UpdateState(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    .line 601
    :goto_0
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postStateNotification()V

    .line 602
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postPromptNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnPromptHandlerChange()V
    .locals 1

    monitor-enter p0

    .line 607
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 609
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postPromptNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnScepFinish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 561
    :try_start_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsScepInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized OnScepStart()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 556
    :try_start_0
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mIsScepInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized SetVpnPrompt(Ljava/lang/String;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 656
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mPromptTitle:Ljava/lang/String;

    .line 657
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postPromptNotification(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 653
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unexpected null prompt title"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized UnicastClient(Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StateManager"

    const-string v1, "UnicastClient"

    .line 516
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :try_start_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mStateString:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;-><init>(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V

    .line 521
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 525
    :catch_0
    :try_start_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "StateManager"

    const-string v1, "UnicastClient failed with RemoteException"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 527
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized UnicastWidgets()V
    .locals 2

    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mStateString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->sendStateUpdateIntent(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized UpdateState(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v0, "updated state current="

    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 442
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " last="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mLastState:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->dt(Ljava/lang/String;)V

    .line 444
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mStateString:Ljava/lang/String;

    .line 445
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHaveReceivedAgentState:Z

    const/4 v0, 0x1

    .line 446
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHaveReceivedAgentState:Z

    .line 447
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->sendStateUpdateIntent(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :try_start_1
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 456
    :try_start_2
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;

    new-instance v4, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-direct {v4, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;-><init>(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/IInfoListener;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 466
    :try_start_3
    sget-object v4, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "StateManager"

    const-string v6, "Exception occurred when attempting to deliver StateCB"

    invoke-static {v4, v5, v6, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 460
    :catch_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v4, "StateManager"

    const-string v5, "RemoteException occurred when attempting to deliver StateCB"

    invoke-static {v3, v4, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInfoListenerList:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p2

    .line 473
    :try_start_4
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "StateManager"

    const-string/jumbo v3, "unexpected exception thrown why trying to Broadcast StateCB"

    invoke-static {v1, v2, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    :goto_2
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/StateManager$4;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-eq p1, v0, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    goto :goto_3

    .line 498
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    goto :goto_3

    .line 487
    :cond_2
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->GetConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object p2

    if-eq p1, p2, :cond_3

    .line 489
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 492
    :cond_3
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mInitiateConnectState:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Connecting:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    if-ne p1, p2, :cond_6

    .line 493
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Failed:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateInitiateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)V

    goto :goto_3

    .line 482
    :cond_4
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 483
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Connected:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateInitiateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)V

    goto :goto_3

    .line 479
    :cond_5
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Disconnecting:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 502
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->postStateNotification()V

    .line 504
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mShowNotifications:Z

    if-eqz p1, :cond_7

    .line 506
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->bindToNCHS()V

    .line 507
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz p1, :cond_7

    .line 509
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->IsScepInProgress()Z

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->AdjustVpnNotificationDisplay(Landroid/content/Context;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 512
    :cond_7
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

.method public declared-synchronized onInitiateConnectCancelled()V
    .locals 1

    monitor-enter p0

    .line 664
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;->Cancelled:Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateInitiateConnectState(Lcom/cisco/anyconnect/vpn/android/service/InitiateConnectState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInitializing(Z)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 710
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->Initializing:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    .line 711
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mConnectProgressState:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-eq v0, v1, :cond_1

    .line 713
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->updateConnectProgressState(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    .line 716
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnInitializeTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    .line 718
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->OnInitializeTimeout:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    monitor-enter p0

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 689
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNchsShutdownListener:Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;

    invoke-interface {v0, v1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->UnregisterShutdownListener(Ljava/lang/String;Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 694
    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "StateManager"

    const-string v2, "got RemoteException trying to unregister NCHS shutdown listener"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHS:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/StateManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
