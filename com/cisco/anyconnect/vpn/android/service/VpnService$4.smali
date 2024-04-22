.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$IDependencyManagerCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deferredResultCB(Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$4$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService$4;Lcom/cisco/anyconnect/vpn/android/service/DependencyManager$DependencyResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
