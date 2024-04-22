.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;
.super Ljava/lang/Object;
.source "AndroidPackageMgr.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AndroidPackageMgr"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getDetailedPackageInfo(Landroid/content/pm/PackageInfo;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;
    .locals 3

    .line 79
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;-><init>(Ljava/lang/String;I)V

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->withSharedUid(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 81
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getUserFreeAppId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->withUid(I)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;

    move-result-object v0

    .line 82
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->withSignature(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->build()Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private getSignature(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object p1, p1, v1

    .line 89
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    .line 90
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "X509"

    .line 94
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 100
    :goto_0
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    const-string v1, "SHA-1"

    .line 101
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    .line 103
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 104
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 105
    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/util/ByteUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :cond_0
    return-object v0

    :catch_1
    move-exception p1

    .line 111
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "AndroidPackageMgr"

    const-string v3, "getSignature failed"

    invoke-static {v1, v2, v3, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getAllPackages()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 123
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 125
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 126
    invoke-static {v8}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getUserFreeAppId(I)I

    move-result v8

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-direct {v6, v7, v8, v5}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;-><init>(Ljava/lang/String;IZ)V

    .line 125
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getAdditionalUserIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 134
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getInstalledPackages"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v5

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 136
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 137
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 138
    invoke-static {v9}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getUserFreeAppId(I)I

    move-result v9

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    invoke-direct {v7, v8, v9, v6}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;-><init>(Ljava/lang/String;IZ)V

    .line 137
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-nez v2, :cond_4

    .line 150
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "AndroidPackageMgr"

    const-string v3, "getAllPackagesOnSystem failed"

    invoke-static {v0, v2, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;
    .locals 3

    const/16 v0, 0x40

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-direct {p0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->getDetailedPackageInfo(Landroid/content/pm/PackageInfo;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 67
    :catch_0
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getAdditionalUserIds(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/MultiUserUtils;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 72
    invoke-direct {p0, v2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AndroidPackageMgr;->getDetailedPackageInfo(Landroid/content/pm/PackageInfo;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
