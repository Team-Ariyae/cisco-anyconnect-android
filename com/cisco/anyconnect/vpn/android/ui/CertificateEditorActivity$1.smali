.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;
.source "CertificateEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/ICertificateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity$1;Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ImportPKCS12CompleteCB([BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public SCEPEnrollExitCB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public SCEPEnrollStartCB()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
