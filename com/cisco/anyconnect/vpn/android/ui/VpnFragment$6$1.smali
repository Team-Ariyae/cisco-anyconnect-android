.class Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;
.super Ljava/lang/Object;
.source "VpnFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

.field final synthetic val$banner:Ljava/lang/String;

.field final synthetic val$certDer:[B

.field final synthetic val$confirmReasons:[Ljava/lang/String;

.field final synthetic val$importAllowed:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;Ljava/lang/String;[B[Ljava/lang/String;Z)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$banner:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$certDer:[B

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$confirmReasons:[Ljava/lang/String;

    iput-boolean p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$importAllowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 296
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mblockUntrustedServers(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mstartCertWarningActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    goto :goto_0

    :cond_0
    const-string v0, "VpnFragment"

    const-string v1, "CertBannerCB"

    .line 299
    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$banner:Ljava/lang/String;

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$certDer:[B

    invoke-direct {v2, v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>([B)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$confirmReasons:[Ljava/lang/String;

    iget-boolean v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->val$importAllowed:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mstartBannerActivity(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;[Ljava/lang/String;Z)V

    .line 302
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;->-$$Nest$mcancelProgressDlgTimer(Lcom/cisco/anyconnect/vpn/android/ui/VpnFragment;)V

    return-void
.end method
