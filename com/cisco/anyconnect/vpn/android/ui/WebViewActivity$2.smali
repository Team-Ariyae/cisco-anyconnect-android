.class Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const/16 p1, 0x8

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmProgressBar(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmProgressBar(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmProgressBar(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    if-ne p2, v0, :cond_1

    .line 204
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fgetmProgressBar(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method
