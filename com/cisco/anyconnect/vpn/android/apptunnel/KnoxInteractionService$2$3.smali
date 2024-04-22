.class Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;
.super Ljava/lang/Object;
.source "KnoxInteractionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->ConnectInProgressCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

.field final synthetic val$state:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;->this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;->val$state:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;->this$1:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2;->this$0:Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$2$3;->val$state:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;->-$$Nest$msetConnectProgressState(Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;)V

    return-void
.end method
