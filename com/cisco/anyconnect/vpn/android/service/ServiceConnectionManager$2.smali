.class Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;
.super Landroid/os/Handler;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x1

    .line 89
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne v0, p1, :cond_0

    const-string p1, "AnyConnect"

    const-string v0, "timeout waiting for service to bind"

    .line 91
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager$2;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;->-$$Nest$monBindTimeoutCB(Lcom/cisco/anyconnect/vpn/android/service/ServiceConnectionManager;)V

    :cond_0
    return-void
.end method
