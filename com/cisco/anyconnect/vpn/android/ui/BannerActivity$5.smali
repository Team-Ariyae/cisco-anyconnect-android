.class Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;
.super Ljava/lang/Object;
.source "BannerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;->initializeCertificateBanner(Landroid/view/View;Landroidx/appcompat/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

.field final synthetic val$d:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->val$d:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;->val$d:Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 217
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/BannerActivity$5;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
