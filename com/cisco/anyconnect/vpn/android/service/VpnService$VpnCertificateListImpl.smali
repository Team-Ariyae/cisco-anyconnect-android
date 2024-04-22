.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;
.super Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VpnCertificateListImpl"
.end annotation


# instance fields
.field private mCertList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 782
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList$Stub;-><init>()V

    .line 783
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->mCertList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method AddCertificate([B)V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->mCertList:Ljava/util/ArrayList;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    invoke-direct {v1, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method ClearCerts()V
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->mCertList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public GetClientCerts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    monitor-enter v0

    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnCertificateListImpl;->mCertList:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 791
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
