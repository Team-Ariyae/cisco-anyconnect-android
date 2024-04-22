.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->Connect(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z
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

.field final synthetic val$conn:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

.field final synthetic val$prefilledCreds:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->val$conn:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->val$prefilledCreds:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->val$conn:Lcom/cisco/anyconnect/vpn/jni/HostEntry;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->val$prefilledCreds:Lcom/cisco/anyconnect/vpn/jni/JniHashMap;

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->Connect(Lcom/cisco/anyconnect/vpn/jni/HostEntry;Lcom/cisco/anyconnect/vpn/jni/JniHashMap;)Z

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

    .line 208
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$9;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
