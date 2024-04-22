.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->lambda$updateCertLists$1$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(ILjava/util/List;)V

    return-void
.end method
