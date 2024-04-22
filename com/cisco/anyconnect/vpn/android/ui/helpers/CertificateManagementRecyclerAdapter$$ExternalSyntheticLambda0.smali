.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->lambda$sortList$0(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)I

    move-result p1

    return p1
.end method
