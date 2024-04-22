.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$3;
.super Ljava/lang/Object;
.source "ImportCertificateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->displayCertImportOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 231
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->setResult(I)V

    .line 232
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->finish()V

    return-void
.end method
