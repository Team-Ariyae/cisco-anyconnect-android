.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$9;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;->continueProtection()V
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

    .line 732
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$9;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 735
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scheduling the timer to retry the certificate fetch"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$9;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    invoke-static {v0}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$1400(Lcom/cisco/umbrella/network/NetworkInterceptorCB;)V

    return-void
.end method
