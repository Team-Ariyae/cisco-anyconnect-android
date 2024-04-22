.class Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$3;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->initializeBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 166
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 167
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$3;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$monBannerReject(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V

    return-void
.end method
