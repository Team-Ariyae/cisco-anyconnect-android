.class Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CertificateManagementRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CertDiffCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z
    .locals 0

    .line 208
    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 199
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;->areContentsTheSame(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z
    .locals 0

    .line 203
    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 199
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;->areItemsTheSame(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Z

    move-result p1

    return p1
.end method
