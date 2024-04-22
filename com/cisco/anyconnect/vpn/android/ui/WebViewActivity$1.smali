.class Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;
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

    .line 75
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    invoke-static {p2}, Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;->-$$Nest$fputmNcss(Lcom/cisco/anyconnect/vpn/android/ui/WebViewActivity;Lcom/cisco/android/nchs/aidl/INetworkComponentSupportService;)V

    return-void
.end method
