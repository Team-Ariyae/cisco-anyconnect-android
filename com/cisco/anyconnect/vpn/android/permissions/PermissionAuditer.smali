.class public final Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;
.super Ljava/lang/Object;
.source "PermissionAuditer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "PermissionAuditer"

.field private static final GID_NET_ADMIN:I

.field private static final GID_NET_RAW:I

.field private static final GID_VPN:I

.field private static final POSSIBLE_COMBINED_PERMISSIONS:[Ljava/lang/String;

.field private static final POSSIBLE_NET_ADMIN_PERMISSIONS:[Ljava/lang/String;

.field private static final POSSIBLE_NET_RAW_PERMISSIONS:[Ljava/lang/String;

.field private static final POSSIBLE_TUN_PERMISSIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "net_raw"

    .line 31
    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->GID_NET_RAW:I

    const-string v0, "net_admin"

    .line 32
    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->GID_NET_ADMIN:I

    const-string/jumbo v0, "vpn"

    .line 33
    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->GID_VPN:I

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.NET_ADMIN"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "android.permission.SAMSUNG_MODIFY_ROUTE"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "cisco.permission.NET_ADMIN"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 34
    sput-object v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_NET_ADMIN_PERMISSIONS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "android.permission.NET_RAW"

    aput-object v2, v1, v3

    const-string v2, "android.permission.SAMSUNG_MODIFY_IPTABLES"

    aput-object v2, v1, v4

    const-string v2, "cisco.permission.NET_RAW"

    aput-object v2, v1, v5

    .line 37
    sput-object v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_NET_RAW_PERMISSIONS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.VPN"

    aput-object v1, v0, v3

    const-string v1, "android.permission.SAMSUNG_TUNTAP"

    aput-object v1, v0, v4

    const-string v1, "cisco.permission.VPN"

    aput-object v1, v0, v5

    .line 40
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_TUN_PERMISSIONS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.cisco.permission.CISCO_VPN_ACCESS"

    aput-object v1, v0, v3

    .line 43
    sput-object v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_COMBINED_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudit(Landroid/content/Context;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;
    .locals 8

    if-eqz p0, :cond_6

    .line 60
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->userId(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->groups([I)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 70
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget v6, v1, v4

    .line 72
    sget v7, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->GID_NET_ADMIN:I

    if-ne v7, v6, :cond_0

    .line 74
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->inGroupNetAdmin(Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    goto :goto_1

    .line 76
    :cond_0
    sget v7, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->GID_NET_RAW:I

    if-ne v7, v6, :cond_1

    .line 78
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->inGroupNetRaw(Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    goto :goto_1

    .line 80
    :cond_1
    sget v7, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->GID_VPN:I

    if-ne v7, v6, :cond_2

    .line 82
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->inGroupVpn(Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/tun"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->hasTun(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    if-eqz v2, :cond_4

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->isTunReadable(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->isTunWritable(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 95
    :cond_4
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->isTunModuleLoaded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->isTunModuleLoaded(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 98
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_NET_ADMIN_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->hasPermisionFromList(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->hasPermissionNetAdmin(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 99
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_NET_RAW_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->hasPermisionFromList(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->hasPermissionNetRaw(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 100
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_TUN_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->hasPermisionFromList(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->hasPermissionTun(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 101
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->POSSIBLE_COMBINED_PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;->hasPermisionFromList(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->hasPermissionCombined(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 104
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionNetAdmin(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionNetRaw(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionTun(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 106
    invoke-virtual {v0, v3}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->checkedForRoot(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    goto :goto_2

    .line 111
    :cond_5
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->haveRootAccess()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->isRooted(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 112
    invoke-virtual {v0, v5}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->checkedForRoot(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;

    .line 115
    :goto_2
    new-instance p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;

    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;-><init>(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)V

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_3

    .line 57
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unexpected null input context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "PermissionAuditer"

    const-string v2, "audit failed due to unexpected exception: "

    invoke-static {v0, v1, v2, p0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static hasPermisionFromList(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 326
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isTunModuleLoaded()Z
    .locals 4

    const/4 v0, 0x0

    .line 340
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lsmod"

    .line 341
    invoke-static {v2, v1}, Lcom/cisco/anyconnect/vpn/android/process/ProcessUtils;->runCmd(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    const-string v2, "tun"

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 346
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "PermissionAuditer"

    const-string v3, "lsmod failed; cannot determine if tun is loaded"

    invoke-static {v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
