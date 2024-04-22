.class public final synthetic Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;->f$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$$ExternalSyntheticLambda6;->f$1:I

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;->lambda$updateCertLists$3$com-cisco-anyconnect-vpn-android-ui-CertificateManagementActivity(I)V

    return-void
.end method
