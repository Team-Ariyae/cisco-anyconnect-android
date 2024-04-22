.class Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;
.super Ljava/lang/Object;
.source "DependencyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$mcheckDependencies(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;->DEFERRED:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;

    if-eq v1, v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$fgetmCallback(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;->deferredResultCB(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    .line 137
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;->-$$Nest$mstopListeningForServiceStarted(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager;)V

    :cond_0
    return-void
.end method
