.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->WMHintCB(Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

.field final synthetic val$hint:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field final synthetic val$reason:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;->val$hint:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;->val$reason:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;->val$hint:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;->val$reason:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->WMHintCB(Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V

    return-void
.end method
