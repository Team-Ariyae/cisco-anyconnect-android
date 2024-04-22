.class Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$3;
.super Ljava/lang/Object;
.source "IPCBroadcastServerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$3;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$3;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    new-instance v1, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;

    invoke-static {v0}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmContext(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl$3;->this$0:Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;

    invoke-static {v3}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$fgetmLastInterfaceEvent(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/cisco/android/nchs/support/ConnectivityIPCBroadcastMessage;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v0, v1}, Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;->-$$Nest$mbroadcastMessage(Lcom/cisco/android/nchs/support/IPCBroadcastServerImpl;Lcom/cisco/android/nchs/ipc/IIPCBroadcastMessage;)V

    return-void
.end method
