.class public Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;
.super Ljava/lang/Object;
.source "ApiService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/ApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VpnApiCBProxy"
.end annotation


# instance fields
.field private final mTarget:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTarget(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    return-object p0
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService;Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->mTarget:Lcom/cisco/anyconnect/vpn/jni/IVpnApiCB;

    return-void
.end method


# virtual methods
.method public AgentDetachedCB()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$15;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$15;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public BannerCB(Ljava/lang/String;)V
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$3;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    .locals 9

    .line 691
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$12;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;[B[Ljava/lang/String;Z[I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ClientCertificateCB([[B)V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$11;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$11;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;[[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public DeliverWebLaunchHostCB(Ljava/lang/String;)V
    .locals 2

    .line 662
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$9;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$9;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public EventAvailable()V
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$10;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$10;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ExitNoticeCB(Ljava/lang/String;I)V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$5;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ImportPKCS12ResultCB([BLjava/lang/String;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$16;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;[BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;)V
    .locals 1

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p0, p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V

    return-void
.end method

.method public NoticeCB(Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$4;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Ljava/lang/String;Lcom/cisco/anyconnect/vpn/jni/MessageType;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public SCEPEnrollExitCB()V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$14;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$14;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public SCEPEnrollStartCB()V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$13;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$13;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ServiceReadyCB()V
    .locals 2

    .line 635
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$6;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$6;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public StateCB(Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$2;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/VPNState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public StatsCB(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$1;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public UserPromptCB(Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$7;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$7;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public WMHintCB(Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V
    .locals 2

    .line 653
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;->this$0:Lcom/cisco/anyconnect/vpn/android/service/ApiService;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/service/ApiService;->-$$Nest$fgetmHandler(Lcom/cisco/anyconnect/vpn/android/service/ApiService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy$8;-><init>(Lcom/cisco/anyconnect/vpn/android/service/ApiService$VpnApiCBProxy;Lcom/cisco/anyconnect/vpn/jni/WMHint;Lcom/cisco/anyconnect/vpn/jni/WMHintReason;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
