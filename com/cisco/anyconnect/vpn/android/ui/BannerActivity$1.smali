.class Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$1;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;
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

    .line 69
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 73
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$monBannerAccept(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;Z)V

    .line 74
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
