.class Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 222
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.cisco.anyconnect.vpn.android.CERTIFICATE_SUMMARY_SHOW_INTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$fgetmAllowImport(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)Z

    move-result v0

    const-string v1, "allow_import"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$fgetmBannerCert(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    move-result-object v0

    const-string v1, "VpnCertificate"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$fgetmConfirmReasons(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$fgetmConfirmReasons(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$fgetmConfirmReasons(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONFIRM_REASONS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    const/16 v1, 0x37

    invoke-virtual {v0, p1, v1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
