.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->GetProfileContents(Ljava/lang/String;)Ljava/lang/String;
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

.field final synthetic val$profileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;Ljava/lang/String;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;->val$profileName:Ljava/lang/String;

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

    .line 456
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$27;->val$profileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->GetProfileContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
