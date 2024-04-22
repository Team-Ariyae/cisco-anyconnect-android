.class Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$4;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 154
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$4;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
