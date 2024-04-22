.class Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;
.super Ljava/lang/Object;
.source "VpnSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;
    }
.end annotation


# static fields
.field private static ENTITY_NAME:Ljava/lang/String; = "VpnSettingsMgr"


# instance fields
.field private final mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;

.field private final mContext:Landroid/content/Context;

.field private final mNCHSConnection:Landroid/content/ServiceConnection;

.field private mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;


# direct methods
.method static bridge synthetic -$$Nest$fputmNchs(Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    .line 51
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;

    .line 54
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/cisco/android/nchs/NetworkComponentHostService;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v0, "Failed to bind to NCHS."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getPreference(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mContext:Landroid/content/Context;

    const-string v1, "UserPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 260
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p2

    :cond_0
    if-eqz p3, :cond_1

    .line 267
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 268
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 272
    :cond_1
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private savePreference(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const-string v0, ""

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mContext:Landroid/content/Context;

    const-string v2, "UserPreferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 220
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p3, :cond_0

    .line 224
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-interface {v1, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p3

    if-nez p3, :cond_1

    .line 235
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object p2, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string p3, "Failed to commit value to SharedPreferences"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 239
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 241
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;

    invoke-interface {p3, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method Destroy()V
    .locals 3

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNCHSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v2, "Exception thrown when unbinding mNCHSConnection"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method declared-synchronized getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "GetBooleanProperty: failed to get key=\'"

    const-string v1, "Unexpected RemoteException fetching Setting with key="

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->get(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 72
    invoke-direct {p0, p1, p2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getPreference(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->isRemote()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v2, :cond_1

    .line 80
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v3, "NCHS is null."

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-object p2

    .line 84
    :cond_1
    :try_start_2
    new-instance v2, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;

    invoke-direct {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;-><init>()V

    .line 85
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1, v2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->GetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Lcom/cisco/android/nchs/aidl/StringBuilderParcel;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v3

    .line 87
    sget-object v4, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v4, v3, :cond_2

    .line 89
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    monitor-exit p0

    return-object p2

    .line 93
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/cisco/android/nchs/aidl/StringBuilderParcel;->getStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_3

    .line 97
    monitor-exit p0

    return-object p2

    .line 101
    :cond_3
    monitor-exit p0

    return-object v0

    .line 107
    :cond_4
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->getValueType()Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    move-result-object v2

    if-ne v0, v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-direct {p0, p1, p2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getPreference(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    :try_start_5
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 113
    monitor-exit p0

    return-object p2

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDefaultSetting(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Cannot find VpnSetting with key="

    monitor-enter p0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 128
    :try_start_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v2, "Unexpected null key"

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return v1

    .line 132
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->get(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    move-result-object v2

    if-nez v2, :cond_1

    .line 136
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    monitor-exit p0

    return v1

    .line 140
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "Failed to set value for key=\'"

    const-string v1, "Failed to validate VpnSetting with value="

    const-string v2, "Unexpected RemoteException setting VpnSetting with key="

    monitor-enter p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 149
    :try_start_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v5, "Unexpected null key"

    invoke-static {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return v4

    .line 153
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->get(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    move-result-object v5

    if-nez v5, :cond_1

    .line 158
    invoke-direct {p0, p1, p2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->savePreference(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    const-string v6, ""

    .line 161
    invoke-virtual {p0, p1, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->getSetting(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    invoke-virtual {v5, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->validateStringValue(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 165
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    monitor-exit p0

    return v4

    .line 170
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->isRemote()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mNchs:Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    if-nez v1, :cond_3

    .line 174
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    const-string v5, "NCHS is null."

    invoke-static {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    monitor-exit p0

    return v4

    .line 178
    :cond_3
    :try_start_4
    iget-object v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, p1, p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;->SetNetworkComponentProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    .line 180
    sget-object v5, Lcom/cisco/android/nchs/aidl/NCHSReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    if-eq v5, v1, :cond_4

    .line 182
    sget-object v5, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\': "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    monitor-exit p0

    return v4

    .line 186
    :cond_4
    :try_start_5
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 188
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->mCallback:Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;

    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager$IVpnSettingManagerCB;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    :cond_5
    monitor-exit p0

    return v3

    .line 196
    :cond_6
    :try_start_6
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    invoke-virtual {v5}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->getValueType()Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    move-result-object v1

    if-ne v0, v1, :cond_7

    const/4 v4, 0x1

    :cond_7
    invoke-direct {p0, p1, p2, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->savePreference(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    :try_start_7
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    sget-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnSettingManager;->ENTITY_NAME:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v4, p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    monitor-exit p0

    return v3

    :goto_0
    monitor-exit p0

    throw p1
.end method
