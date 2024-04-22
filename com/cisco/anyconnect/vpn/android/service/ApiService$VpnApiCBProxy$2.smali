.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->StateCB(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

.field final synthetic val$state:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field final synthetic val$stateString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;->val$state:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;->val$stateString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;->val$state:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;->val$stateString:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->StateCB(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    return-void
.end method
