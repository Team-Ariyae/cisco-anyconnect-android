.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->StatsCB(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

.field final synthetic val$stats:Lcom/cisco/anyconnect/vpn/jni/VPNStats;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;->val$stats:Lcom/cisco/anyconnect/vpn/jni/VPNStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;->val$stats:Lcom/cisco/anyconnect/vpn/jni/VPNStats;

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->StatsCB(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    return-void
.end method
