.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;
.super Ljava/lang/Object;
.source "ImportCertificateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 237
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$mstartKeyChainImport(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$mstartUriImport(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$mstartFilePickerImport(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;->getErrorText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$monImportFailed(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
