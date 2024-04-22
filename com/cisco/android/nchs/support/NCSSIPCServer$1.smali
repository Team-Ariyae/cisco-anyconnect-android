.class Lcom/cisco/android/nchs/support/NCSSIPCServer$1;
.super Ljava/lang/Object;
.source "NCSSIPCServer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/NCSSIPCServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/NCSSIPCServer;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/NCSSIPCServer;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer$1;->this$0:Lcom/cisco/android/nchs/support/NCSSIPCServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 965
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer$1;->this$0:Lcom/cisco/android/nchs/support/NCSSIPCServer;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->-$$Nest$fputmKnoxInteractionService(Lcom/cisco/android/nchs/support/NCSSIPCServer;Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;)V

    .line 966
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer$1;->this$0:Lcom/cisco/android/nchs/support/NCSSIPCServer;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->signalRequestedOperationCompleted(Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 971
    iget-object p1, p0, Lcom/cisco/android/nchs/support/NCSSIPCServer$1;->this$0:Lcom/cisco/android/nchs/support/NCSSIPCServer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/android/nchs/support/NCSSIPCServer;->-$$Nest$fputmKnoxInteractionService(Lcom/cisco/android/nchs/support/NCSSIPCServer;Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;)V

    return-void
.end method
