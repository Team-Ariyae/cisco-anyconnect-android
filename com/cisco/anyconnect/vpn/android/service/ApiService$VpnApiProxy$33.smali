.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$33;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->GetActiveLocale()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$33;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

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

    .line 536
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$33;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$33;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetActiveLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
