.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

.field final synthetic val$certBannerSummary:Ljava/lang/String;

.field final synthetic val$certDer:[B

.field final synthetic val$confirmReasonEnums:[I

.field final synthetic val$confirmReasons:[Ljava/lang/String;

.field final synthetic val$importAllowed:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;[ILjava/lang/String;[B[Ljava/lang/String;Z)V
    .locals 0

    .line 3420
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$confirmReasonEnums:[I

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$certBannerSummary:Ljava/lang/String;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$certDer:[B

    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$confirmReasons:[Ljava/lang/String;

    iput-boolean p6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$importAllowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3423
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fgetmPromptHandlerMgr(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/PromptHandlerManager;->getActivePromptHandler()Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;

    move-result-object v1

    const-string v0, "VpnService"

    const/4 v7, 0x0

    if-nez v1, :cond_0

    .line 3426
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "No PromptHandler to handle CertBannerCB"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3427
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, v7, v7}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetCertBannerResponse(ZZ)V

    return-void

    .line 3433
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$confirmReasonEnums:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3436
    :cond_1
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$certBannerSummary:Ljava/lang/String;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$certDer:[B

    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$confirmReasons:[Ljava/lang/String;

    iget-boolean v5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$importAllowed:Z

    iget-object v6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$13;->val$confirmReasonEnums:[I

    invoke-interface/range {v1 .. v6}, Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3440
    :catch_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "RemoteException on CertBannerCB"

    invoke-static {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$sfgetmApiService()Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->getApi()Lcom/cisco/anyconnect/vpn/jni/IVpnApi;

    move-result-object v0

    invoke-interface {v0, v7, v7}, Lcom/cisco/anyconnect/vpn/jni/IVpnApi;->SetCertBannerResponse(ZZ)V

    :goto_1
    return-void
.end method
