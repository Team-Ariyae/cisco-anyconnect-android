.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;
.super Ljava/lang/Object;
.source "KnoxInteractionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->StateCB(Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

.field final synthetic val$stateInfo:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;Lcom/cisco/anyconnect/vpn/android/service/StateInfo;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;->val$stateInfo:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$1;->val$stateInfo:Lcom/cisco/anyconnect/vpn/android/service/StateInfo;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/StateInfo;->getState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetVpnState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/anyconnect/vpn/jni/VPNState;)V

    return-void
.end method
