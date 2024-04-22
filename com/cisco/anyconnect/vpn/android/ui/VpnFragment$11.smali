.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "VpnFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 859
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 861
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmNetworkChangeHandler(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 862
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$11;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmNetworkChangeHandler(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
