.class public final Lcom/cisco/android/nchs/support/SystemPrivProxy;
.super Ljava/lang/Object;
.source "SystemPrivProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;
    }
.end annotation


# static fields
.field private static final CISCO_VPN_SUPPORT_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.systemsupport"

.field private static final ENTITY_NAME:Ljava/lang/String; = "SystemPrivProxy"

.field private static final PACKAGE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_START_MAX_TIMEOUT_MILLIS:J = 0x1388L

.field private static final SERVICE_START_TIMEOUT_INTERVAL_MILLIS:J = 0x64L


# instance fields
.field private mCiscoServiceConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

.field private mServiceConnected:Z

.field private mSystemSupportService:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;


# direct methods
.method static bridge synthetic -$$Nest$fputmServiceConnected(Lcom/cisco/android/nchs/support/SystemPrivProxy;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mServiceConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSystemSupportService(Lcom/cisco/android/nchs/support/SystemPrivProxy;Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mSystemSupportService:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->PACKAGE_MAP:Ljava/util/Map;

    const-string v1, "com.cisco.anyconnect.vpn.android.systemsupport"

    .line 59
    sget-object v2, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->CISCO_SYSTEM_SERVICE:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->NO_PROVIDER:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    iput-object v0, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    if-eqz p1, :cond_5

    .line 93
    iput-object p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mContext:Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->detectProvider()V

    .line 96
    sget-object p1, Lcom/cisco/android/nchs/support/SystemPrivProxy$2;->$SwitchMap$com$cisco$android$nchs$support$SystemPrivProxy$PrivilegeProvider:[I

    iget-object v0, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "SystemPrivProxy"

    const-string v2, "Using Cisco system service for System privileges."

    invoke-static {p1, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;

    invoke-direct {p1, p0}, Lcom/cisco/android/nchs/support/SystemPrivProxy$1;-><init>(Lcom/cisco/android/nchs/support/SystemPrivProxy;)V

    iput-object p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mCiscoServiceConnection:Landroid/content/ServiceConnection;

    .line 122
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    monitor-enter p0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mCiscoServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "SystemPrivProxy"

    const-string v1, "failed to bind to System Support Service"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 133
    :cond_2
    iget-boolean p1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mServiceConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    const-wide/16 v2, 0x64

    .line 137
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 144
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    cmp-long p1, v2, v0

    if-ltz p1, :cond_3

    const-wide/16 v2, 0x1388

    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    .line 150
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "SystemPrivProxy"

    const-string v1, "Timeout waiting for support service to start."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_4
    monitor-exit p0

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 90
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid null context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private detectProvider()V
    .locals 3

    .line 250
    sget-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->NO_PROVIDER:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    iput-object v0, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    .line 254
    sget-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->PACKAGE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    iput-object v0, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    :cond_1
    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method


# virtual methods
.method public Destroy()V
    .locals 2

    .line 169
    sget-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$2;->$SwitchMap$com$cisco$android$nchs$support$SystemPrivProxy$PrivilegeProvider:[I

    iget-object v1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mCiscoServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mCiscoServiceConnection:Landroid/content/ServiceConnection;

    :goto_0
    return-void
.end method

.method public SetProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "CiscoServiceConnect.SetSystemProperty returned "

    .line 190
    sget-object v1, Lcom/cisco/android/nchs/support/SystemPrivProxy$2;->$SwitchMap$com$cisco$android$nchs$support$SystemPrivProxy$PrivilegeProvider:[I

    iget-object v2, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mPrivProvider:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-virtual {v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const-string v3, "SystemPrivProxy"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 218
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Unknown SystemPrivProxy service provider"

    invoke-static {p1, v3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mCiscoServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/SystemPrivProxy;->mSystemSupportService:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;

    invoke-interface {v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/ISystemSupportService;->SetSystemProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;

    move-result-object p1

    .line 201
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;->RESULT_OPERATION_COMPLETED:Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->getCode()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    move-result-object v1

    if-eq p2, v1, :cond_1

    .line 203
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCodeParcel;->getCode()Lcom/cisco/anyconnect/vpn/android/systemsupport/aidl/AAVKReturnCode;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-static {p2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v4

    :catch_0
    move-exception p1

    .line 211
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "Unexpected RemoteException in calling SetSystemProperty"

    invoke-static {p2, v3, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 195
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid state - Destroy() already invoked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
