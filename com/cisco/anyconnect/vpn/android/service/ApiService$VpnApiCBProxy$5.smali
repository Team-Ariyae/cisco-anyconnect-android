.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->ExitNoticeCB(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

.field final synthetic val$notice:Ljava/lang/String;

.field final synthetic val$returnCode:I


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;I)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;->val$notice:Ljava/lang/String;

    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;->val$returnCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 629
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;->val$notice:Ljava/lang/String;

    iget v2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;->val$returnCode:I

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->ExitNoticeCB(Ljava/lang/String;I)V

    return-void
.end method
