.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->BannerCB(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

.field final synthetic val$banner:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Ljava/lang/String;)V
    .locals 0

    .line 3387
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;->val$banner:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3390
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "VpnService"

    if-nez v0, :cond_0

    .line 3393
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "No PromptHandler to handle CertBannerCB"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetBannerResponse(Z)V

    return-void

    .line 3400
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$12;->val$banner:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->BannerCB(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3404
    :catch_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "RemoteException on BannerCB"

    invoke-static {v0, v2, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetBannerResponse(Z)V

    :goto_0
    return-void
.end method
