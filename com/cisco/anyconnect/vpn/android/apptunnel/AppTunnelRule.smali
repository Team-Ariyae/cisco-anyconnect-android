.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;
.super Ljava/lang/Object;
.source "AppTunnelRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;
    }
.end annotation


# static fields
.field public static final ANDROID_MU_USER_RANGE:I = 0x186a0

.field private static final ENTITY_NAME:Ljava/lang/String; = "AppTunnelRule"


# instance fields
.field private final mAllowSharedUid:Z

.field private final mCertIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMinVersion:Ljava/lang/String;

.field private final mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->-$$Nest$fgetmPackageName(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->-$$Nest$fgetmMinVersion(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mMinVersion:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->-$$Nest$fgetmCertIds(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mCertIds:Ljava/util/List;

    .line 39
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->-$$Nest$fgetmAllowSharedUid(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mAllowSharedUid:Z

    .line 40
    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)V

    return-void
.end method

.method private logValidateFailure(Ljava/lang/String;)V
    .locals 3

    .line 90
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to validate app tunnel rule for pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppTunnelRule"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAllowShareUid()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mAllowSharedUid:Z

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hasWildcard()Z
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public matchWildcard(Ljava/lang/String;)Z
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    const-string v1, "*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mPackageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mMinVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mMinVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAllowSharedUid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mAllowSharedUid:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mCertIds="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mCertIds:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->validate(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

    invoke-interface {v0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;->getPackageInfo(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "no package info"

    .line 66
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->logValidateFailure(Ljava/lang/String;)V

    return-object v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mMinVersion:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->getVersion()I

    move-result v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mMinVersion:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_1

    const-string p1, "minimum version mismatch"

    .line 72
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->logValidateFailure(Ljava/lang/String;)V

    return-object v1

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mCertIds:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 78
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->getSignature()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 80
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->mCertIds:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string p1, "package signature mismatch"

    .line 81
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;->logValidateFailure(Ljava/lang/String;)V

    return-object v1

    .line 86
    :cond_3
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/DetailedPackageInfo;->getSharedUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppInfo;-><init>(Ljava/lang/String;IZ)V

    return-object v1
.end method
