.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

.field final synthetic val$cb:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;->val$cb:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;->val$cb:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Init(Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
