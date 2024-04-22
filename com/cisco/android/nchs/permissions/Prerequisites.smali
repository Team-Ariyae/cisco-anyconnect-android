.class public final Lcom/cisco/android/nchs/permissions/Prerequisites;
.super Ljava/lang/Object;
.source "Prerequisites.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;,
        Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;
    }
.end annotation


# static fields
.field public static final AVF_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field public static final CISCO_DEVICE_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.ciscodevice"

.field private static final ENTITY_NAME:Ljava/lang/String; = "Prerequisites"

.field public static final HTC_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.htc"

.field public static final ICE_CREAM_SANDWICH_API_LEVEL:I = 0xe

.field public static final ICE_CREAM_SANDWICH_MR1_API_LEVEL:I = 0xf

.field public static final JELLY_BEAN_MR1_API_LEVEL:I = 0x11

.field public static final JELLY_BEAN_MR2_API_LEVEL:I = 0x12

.field public static final KIT_KAT_API_LEVEL:I = 0x13

.field public static final KNOX_VER_20:I = 0x6

.field public static final KNOX_VER_21:I = 0x7

.field public static final KNOX_VER_22:I = 0x8

.field public static final LENOVO_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.lenovo"

.field public static final L_API_LEVEL:I = 0x15

.field public static final MOTOROLA_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.motorola"

.field public static final N_API_LEVEL:I = 0x18

.field public static final ROOTED_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.rooted"

.field public static final SAMSUNG_LEGACY_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.samsung"

.field public static final SAMSUNG_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.samsung43"

.field public static final UNIVERSAL_PACKAGE:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.universal"

.field private static final UNIVERSAL_PERMISSION:Ljava/lang/String; = "com.cisco.permission.CISCO_VPN_ACCESS"

.field private static isRootedPackage:Z = false

.field private static permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIncompatibility(Landroid/content/Context;)Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;
    .locals 1

    .line 175
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isHtcPackage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    sget-object p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->HTC_PACKAGE_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->HTC_PACKAGE_50_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    :goto_0
    return-object p0

    .line 183
    :cond_1
    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->isX86ABI()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 185
    sget-object p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->NO_X86_SUPPORT:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static CheckPrerequisites(Landroid/content/Context;)Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;
    .locals 2

    .line 193
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sget-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    if-eq v0, v1, :cond_0

    return-object v1

    .line 202
    :cond_0
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->NO_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 206
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->havePermissionsUniversal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_PERMISSIONS_UNIVERSAL:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 213
    :cond_1
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->NO_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sget-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->havePermissionsPatch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_PERMISSIONS_PATCH:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    :cond_2
    const-string v0, "com.cisco.anyconnect.vpn.android.rooted"

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->isRootedPackage:Z

    .line 222
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->NO_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sget-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->haveRootAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_ROOT_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 228
    :cond_3
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->NO_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sget-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    if-ne v0, v1, :cond_4

    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->haveAVF(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 230
    sget-object p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_AVF_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    sput-object p0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 233
    :cond_4
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Permissions available:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prerequisites"

    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object p0, Lcom/cisco/android/nchs/permissions/Prerequisites;->permissionCheckResult:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    return-object p0
.end method

.method public static getKnoxVer(Landroid/content/Context;)I
    .locals 1

    const/4 v0, -0x1

    .line 250
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 251
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getAPILevel()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catch_0
    :catchall_0
    return v0
.end method

.method public static hasAndroidForWork()Z
    .locals 2

    .line 474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasAvfAppTunnel(Landroid/content/Context;)Z
    .locals 1

    .line 431
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_AVF_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->CheckPrerequisites(Landroid/content/Context;)Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    move-result-object p0

    if-ne v0, p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasFipsSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasKnoxNPA(Landroid/content/Context;)Z
    .locals 1

    .line 264
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->getKnoxVer(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x16

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasKnoxPacketMeta(Landroid/content/Context;)Z
    .locals 0

    .line 414
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasKnoxVpn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static hasKnoxVpn(Landroid/content/Context;)Z
    .locals 1

    .line 243
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->getKnoxVer(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0xb

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasMdm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static hasSystemSign(Landroid/content/Context;)Z
    .locals 1

    .line 344
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, v0}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasSystemUid()Z
    .locals 2

    .line 336
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasUmbrellaSupport()Z
    .locals 2

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static haveAVF(Landroid/content/Context;)Z
    .locals 1

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.cisco.anyconnect.vpn.android.avf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static havePermissionsPatch(Landroid/content/Context;)Z
    .locals 7

    .line 356
    invoke-static {p0}, Lcom/cisco/android/nchs/permissions/Prerequisites;->hasSystemSign(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 363
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.VPN"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.NET_ADMIN"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 365
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.NET_RAW"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    return v4

    .line 377
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "cisco.permission.VPN"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "cisco.permission.NET_ADMIN"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "cisco.permission.NET_RAW"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    return v4

    .line 389
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.htc.framework.permission.VPN"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.htc.framework.permission.NET_ADMIN"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "com.htc.framework.permission.NET_RAW"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v5, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method private static havePermissionsUniversal(Landroid/content/Context;)Z
    .locals 2

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.cisco.permission.CISCO_VPN_ACCESS"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static haveRootAccess()Z
    .locals 5

    .line 274
    sget-boolean v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->isRootedPackage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "com.cisco.anyconnect.vpn.android.process.RootChecker"

    .line 279
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "haveRootAccess"

    new-array v3, v1, [Ljava/lang/Class;

    .line 280
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 281
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 285
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "Prerequisites"

    const-string v4, "haveRootAccess failed"

    invoke-static {v2, v3, v4, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public static isBackgroundExecutionLimited(Landroid/content/Context;)Z
    .locals 1

    .line 489
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1a

    if-lt p0, v0, :cond_0

    .line 490
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChromebook(Landroid/content/Context;)Z
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "org.chromium.arc.device_management"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCiscoDevicePackage(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.cisco.anyconnect.vpn.android.ciscodevice"

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDeviceSecure(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "keyguard"

    .line 479
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isHtcPackage(Landroid/content/Context;)Z
    .locals 1

    .line 406
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.cisco.anyconnect.vpn.android.htc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRootedPackage()Z
    .locals 1

    .line 291
    sget-boolean v0, Lcom/cisco/android/nchs/permissions/Prerequisites;->isRootedPackage:Z

    return v0
.end method

.method public static isX86ABI()Z
    .locals 3

    const-string v0, "ro.product.cpu.abi"

    .line 451
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/util/SystemPropertyUtil;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 460
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 461
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static supportsYubikey()Z
    .locals 2

    .line 500
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static useMultitableRoutes(Landroid/content/Context;)Z
    .locals 1

    .line 435
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static useNetworkCallback(Landroid/content/Context;)Z
    .locals 1

    .line 167
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static usePieDynamicExecutable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
