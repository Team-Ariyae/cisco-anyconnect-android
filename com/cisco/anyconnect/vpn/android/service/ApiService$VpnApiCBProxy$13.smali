.class Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$13;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->SCEPEnrollStartCB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$13;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 704
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$13;->this$1:Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->-$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    move-result-object v0

    invoke-interface {v0}, Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;->SCEPEnrollStartCB()V

    return-void
.end method
