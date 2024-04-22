.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->SetNewTunnelGroup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

.field final synthetic val$group:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;->val$group:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$21;->val$group:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetNewTunnelGroup(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
