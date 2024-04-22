.class public Lcom/cisco/android/nchs/support/DeviceInfoReport;
.super Ljava/lang/Object;
.source "DeviceInfoReport.java"


# static fields
.field private static final DEVICE_ID_RESTRICTIONS_KEY:Ljava/lang/String; = "vpn_connection_device_id"

.field private static final REPORT_HARDWARE_ID_RESTRICTIONS_KEY:Ljava/lang/String; = "vpn_connection_report_hardware_id"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cisco/android/nchs/support/DeviceInfoManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    return-void
.end method

.method private getDeviceIdFromRestrictions()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAndroidForWork()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mContext:Landroid/content/Context;

    const-string v2, "restrictions"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getApplicationRestrictions"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "vpn_connection_device_id"

    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Failed get restrictions"

    .line 86
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->getDeviceIdFromRestrictions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->GetDeviceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->shouldReportHardwareIds()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentWifiMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneId()Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->shouldReportHardwareIds()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentTelephoneID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/cisco/android/nchs/support/DeviceInfoReport;->shouldReportHardwareIds()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mMgr:Lcom/cisco/android/nchs/support/DeviceInfoManager;

    invoke-virtual {v0}, Lcom/cisco/android/nchs/support/DeviceInfoManager;->getCurrentTelephoneType()I

    move-result v0

    return v0
.end method

.method public shouldReportHardwareIds()Z
    .locals 6

    const/4 v0, 0x0

    .line 94
    :try_start_0
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasAndroidForWork()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/cisco/android/nchs/support/DeviceInfoReport;->mContext:Landroid/content/Context;

    const-string v3, "restrictions"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getApplicationRestrictions"

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 101
    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v3, "vpn_connection_report_hardware_id"

    .line 102
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "Failed get restrictions"

    .line 106
    invoke-static {p0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
