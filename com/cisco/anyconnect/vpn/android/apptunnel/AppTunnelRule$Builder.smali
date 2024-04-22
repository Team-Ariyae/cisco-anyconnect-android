.class public Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;
.super Ljava/lang/Object;
.source "AppTunnelRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAllowSharedUid:Z

.field private mCertIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinVersion:Ljava/lang/String;

.field public mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowSharedUid(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mAllowSharedUid:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCertIds(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mCertIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMinVersion(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mMinVersion:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mPackageMgr:Lcom/cisco/anyconnect/vpn/android/apptunnel/IPackageMgr;

    .line 102
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;
    .locals 2

    .line 116
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule;-><init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule-IA;)V

    return-object v0
.end method

.method public setAllowedSharedUid(Z)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mAllowSharedUid:Z

    return-object p0
.end method

.method public setCertIds(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mCertIds:Ljava/util/List;

    return-object p0
.end method

.method public setMinVersion(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/AppTunnelRule$Builder;->mMinVersion:Ljava/lang/String;

    return-object p0
.end method
