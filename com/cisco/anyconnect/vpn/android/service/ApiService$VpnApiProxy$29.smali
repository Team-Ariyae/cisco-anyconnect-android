.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->EnumerateCertificates(I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

.field final synthetic val$certType:I


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;I)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;->val$certType:I

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

    .line 483
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/jni/ManagedCertInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiProxy$29;->val$certType:I

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->EnumerateCertificates(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
