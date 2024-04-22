.class Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$2;
.super Ljava/lang/Object;
.source "IPCBroadcastServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->broadcastMessage(Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

.field final synthetic val$handler:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$2;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    iput-object p2, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$2;->val$handler:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$2;->val$handler:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
