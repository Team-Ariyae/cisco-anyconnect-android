.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

.field public final synthetic f$1:Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;->f$1:Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda4;->f$1:Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->lambda$confirmDeleteCertificate$4$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Landroid/content/DialogInterface;I)V

    return-void
.end method
