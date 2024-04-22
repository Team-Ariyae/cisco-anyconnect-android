.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;
.super Ljava/lang/Object;
.source "VpnFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 135
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmState(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mupdatePausedStateText(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    :cond_0
    return-void
.end method
