.class public final Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;
.super Ljava/lang/Object;
.source "NchsUtils.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NchsUtils"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "this class cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static AdjustVpnNotificationDisplay(Landroid/content/Context;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 210
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "NchsUtils"

    const-string p2, "Unexpected null NCHS"

    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_0
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->getNativeComponentState(Landroid/content/Context;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSState;->ACTIVE:Lcom/cisco/android/nchs/aidl/NCHSState;

    const/4 v2, 0x0

    const-string v3, "AnyConnect"

    if-ne v1, v0, :cond_1

    .line 220
    invoke-static {p1, p0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 223
    :cond_1
    sget-object v1, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    if-ne v1, v0, :cond_2

    if-nez p2, :cond_2

    .line 225
    invoke-static {p1, p0, v3, v2}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 229
    invoke-static {p1, p0, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils;->SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static SetDisplayNotification(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "failed to SetDisplayNotifications: "

    const-string v1, "NchsUtils"

    if-nez p0, :cond_0

    .line 87
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "Unexpected null NCHS"

    invoke-static {p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-interface {p0, p1, p2, p3}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetDisplayNotifications(Ljava/lang/String;Ljava/lang/String;Z)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    .line 96
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq p1, p0, :cond_1

    .line 98
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "got RemoteException trying to SetDisplayNotifications"

    invoke-static {p1, v1, p2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static ShutdownService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "NchsUtils"

    if-nez p0, :cond_0

    .line 121
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "ShutdownService: no context"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/NchsUtils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 173
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p1, "failed to bind to NCHS service"

    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static getNativeComponentState(Landroid/content/Context;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)Lcom/cisco/android/nchs/aidl/NCHSState;
    .locals 6

    const-string v0, "NchsUtils"

    .line 181
    :try_start_0
    invoke-interface {p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetAllComponentInfo()[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    move-result-object p1

    .line 182
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 184
    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getState()Lcom/cisco/android/nchs/aidl/NCHSState;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 192
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_1
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Did not find NativeComponentInfo for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object p0, Lcom/cisco/android/nchs/aidl/NCHSState;->IDLE:Lcom/cisco/android/nchs/aidl/NCHSState;

    return-object p0
.end method

.method public static isNativeComponentInstalled(Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;Ljava/lang/String;)Z
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-interface {p0, p1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->IsNetworkComponentInstalled(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    sget-object p1, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    invoke-virtual {p0}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 64
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "NchsUtils"

    const-string v2, "Remote Exception occurred in NCHS aidl call."

    invoke-static {p1, v1, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 53
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected null inputs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
