.class Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$1;
.super Ljava/lang/Object;
.source "CertificateSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 146
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "import_cert"

    const/4 v1, 0x1

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateSummaryActivity;->finish()V

    return-void
.end method
