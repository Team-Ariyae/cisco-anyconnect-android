.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 758
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "active port changed. init socket channel"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1500(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/network/SelectSocketChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1500(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)Lcom/cisco/umbrella/network/SelectSocketChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/umbrella/network/SelectSocketChannel;->close()V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$10;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1600(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    return-void
.end method
