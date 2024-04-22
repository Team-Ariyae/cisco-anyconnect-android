.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;
.super Ljava/lang/Object;
.source "VpnFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 520
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 522
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unexpected null state. Ignoring click."

    .line 523
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 526
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmServiceReady(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Connection request called before VPN service is ready, ignoring"

    .line 527
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 532
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setEnabled(Z)V

    .line 533
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setClickable(Z)V

    .line 534
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmVpnCard(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/google/android/material/card/MaterialCardView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->setFocusable(Z)V

    .line 536
    sget-object p1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 537
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mConnect(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mDisconnect(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    :goto_0
    return-void
.end method
