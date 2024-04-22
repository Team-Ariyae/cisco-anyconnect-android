.class Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$2;
.super Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;
.source "BannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;Landroid/content/Context;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-direct {p0, p2}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionCB;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public OnServiceConnected(Lcom/cisco/anyconnect/vpn/android/service/IVpnService;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->-$$Nest$minitializeBanner(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;)V

    return-void
.end method
