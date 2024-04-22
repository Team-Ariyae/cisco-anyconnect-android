.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

.field final synthetic val$bSensitive:Z

.field final synthetic val$notice:Ljava/lang/String;

.field final synthetic val$type:Lcom/cisco/anyconnect/vpn/jni/MessageType;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V
    .locals 0

    .line 613
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->val$notice:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->val$type:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    iput-boolean p4, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->val$bSensitive:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 616
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->val$notice:Ljava/lang/String;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->val$type:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    iget-boolean v3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;->val$bSensitive:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V

    return-void
.end method
