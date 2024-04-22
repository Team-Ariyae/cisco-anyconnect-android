.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;
.super Ljava/lang/Object;
.source "DetailedPackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;
    }
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSharedUid:Ljava/lang/String;

.field private final mSig:Ljava/lang/String;

.field private final mUid:I

.field private final mVersion:I


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->-$$Nest$fgetmPackageName(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mPackageName:Ljava/lang/String;

    .line 26
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->-$$Nest$fgetmVersion(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mVersion:I

    .line 27
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->-$$Nest$fgetmSig(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mSig:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->-$$Nest$fgetmSharedUid(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mSharedUid:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->-$$Nest$fgetmUid(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)I

    move-result p1

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mUid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;
    .locals 4

    .line 96
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mUid:I

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mSharedUid:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mSharedUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mSig:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mUid:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->mVersion:I

    return v0
.end method
