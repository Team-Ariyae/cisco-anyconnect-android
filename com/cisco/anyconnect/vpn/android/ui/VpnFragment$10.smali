.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;
.super Ljava/lang/Object;
.source "VpnFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->handlePrompt(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

.field final synthetic val$promptOp:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;->val$promptOp:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 713
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fgetmServiceConnMgr(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->IsVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;->val$promptOp:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$fputmPendingPromptOp(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$10;->val$promptOp:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
