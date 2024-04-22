.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;
.super Ljava/lang/Object;
.source "DetailedPackageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private mSharedUid:Ljava/lang/String;

.field private mSig:Ljava/lang/String;

.field private mUid:I

.field private final mVersion:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSharedUid(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mSharedUid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSig(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mSig:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUid(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVersion(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mVersion:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mVersion:I

    return-void
.end method


# virtual methods
.method public build()Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;
    .locals 2

    .line 66
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo-IA;)V

    return-object v0
.end method

.method public withSharedUid(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mSharedUid:Ljava/lang/String;

    return-object p0
.end method

.method public withSignature(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mSig:Ljava/lang/String;

    return-object p0
.end method

.method public withUid(I)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;
    .locals 0

    .line 48
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo$Builder;->mUid:I

    return-object p0
.end method
