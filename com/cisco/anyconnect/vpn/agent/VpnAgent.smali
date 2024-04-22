.class public Lcom/cisco/anyconnect/vpn/agent/VpnAgent;
.super Ljava/lang/Object;
.source "VpnAgent.java"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$mstartAgentNative(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->startAgentNative()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopAgentNative(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->stopAgentNative()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "c++_shared"

    .line 75
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acciscocrypto"

    .line 76
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acciscossl"

    .line 77
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpncommon"

    .line 78
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpncommoncrypt"

    .line 79
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnapi"

    .line 80
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnagentutilities"

    .line 82
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "vpnagent"

    .line 83
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private native startAgentNative()Z
.end method

.method private native stopAgentNative()V
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public start(Z)Z
    .locals 3

    .line 22
    new-instance v0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$1;-><init>(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)V

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 43
    :cond_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1388

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "exception in start"

    .line 45
    invoke-static {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public stop()V
    .locals 4

    .line 51
    new-instance v0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/agent/VpnAgent$2;-><init>(Lcom/cisco/anyconnect/vpn/agent/VpnAgent;)V

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/agent/VpnAgent;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "exception in stop"

    .line 64
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
