.class public Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;
.super Landroid/app/Service;
.source "TestInterceptorService.java"

# interfaces
.implements Lcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;


# static fields
.field private static final PROXY_FINAL_DNS:Ljava/lang/String; = "2001:420:2c51:1311:e031:2a1:1ad2:1d6a"

.field private static TEST_RECONFIGURE:Z = false


# instance fields
.field private mConfigureCount:I

.field mConfigureTask:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field private mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

.field mInterceptorCB:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

.field private mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

.field private mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

.field mRemoveClosedFlows:Ljava/lang/Runnable;

.field private mTxFlowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmProxyChannel(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTxFlowMap(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mTxFlowMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoConfigure(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->doConfigure()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleInterceptorStateChange(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->handleInterceptorStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprotectChannel(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->protectChannel()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mscheduleRemoveClosedFlows(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->scheduleRemoveClosedFlows()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mTxFlowMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureCount:I

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$1;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mRemoveClosedFlows:Ljava/lang/Runnable;

    .line 78
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$2;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$2;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureTask:Ljava/lang/Runnable;

    .line 178
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$4;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptorCB:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    return-void
.end method

.method private doConfigure()V
    .locals 6

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "host1.com"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "host2.com"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->standalone()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    const-string v2, "Umbrella Protection"

    .line 92
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->setSessionName(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const-string v3, "10.10.10.10"

    const/16 v4, 0x20

    invoke-direct {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    .line 93
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const-string v3, "FE80:0000:0000:0000:AADD:207C:71F0:371E"

    const/16 v5, 0x40

    invoke-direct {v2, v3, v5}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    .line 94
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    const-string v2, "2001:420:2c51:1311:e031:2a1:1ad2:1d6a"

    .line 95
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    new-instance v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const/16 v5, 0x80

    invoke-direct {v3, v2, v5}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {v1, v3}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    const-string v3, "1.2.3.4"

    invoke-direct {v2, v3, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;-><init>(Ljava/lang/String;I)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    .line 110
    sget-boolean v1, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->TEST_RECONFIGURE:Z

    if-eqz v1, :cond_0

    .line 111
    iget v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureCount:I

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->standalone()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "8.8.8."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureCount:I

    rem-int/lit16 v3, v3, 0x100

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    .line 119
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$3;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->excludeDnsQueries(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;

    .line 128
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->configure(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;)Z

    move-result v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ddxc configure result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " state="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getState()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " count="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureCount:I

    .line 134
    sget-boolean v0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->TEST_RECONFIGURE:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mConfigureTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private handleInterceptorStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ddxt interceptor state change: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p2, p1, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->doConfigure()V

    goto :goto_0

    .line 144
    :cond_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p2, p1, :cond_3

    const-string p1, "ddxt protecting socket"

    .line 145
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ddxt reconfigured"

    .line 148
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->protectChannel()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    const-string p1, "2001:420:2c51:1311:e031:2a1:1ad2:1d6a"

    .line 157
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    .line 158
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    const/16 v0, 0x35

    invoke-virtual {p2, p1, v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->initialize(Ljava/net/InetAddress;I)V

    .line 159
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->scheduleRemoveClosedFlows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "ddxt protected socket"

    .line 165
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "failed to init proxy channel"

    .line 161
    invoke-static {p0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 166
    :cond_3
    sget-object p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    if-ne p2, p1, :cond_5

    .line 167
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->getLastFailureCode()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 169
    sget-object p2, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;->REVOKED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$FailureCode;

    if-ne p2, p1, :cond_4

    const-string p1, "ddx8 vpn revoked!"

    .line 170
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ddx8 interceptor failed with code: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private initProxyChannel()V
    .locals 2

    .line 266
    :try_start_0
    new-instance v0, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1, p0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;-><init>(ILcom/cisco/anyconnect/common/network/SelectSocketChannel$ISelectSocketChannelCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private protectChannel()Z
    .locals 5

    const-string v0, "ddx protectChannel entry"

    .line 224
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->getSocket()Ljava/net/DatagramSocket;

    move-result-object v0

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    .line 232
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getFileDescriptor$"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 233
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    .line 234
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v2, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->protect(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to protect socket!"

    .line 238
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "failed to protect socket"

    .line 243
    invoke-static {p0, v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleRemoveClosedFlows()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mRemoveClosedFlows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mRemoveClosedFlows:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 43
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onChannelReconnected()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$5;-><init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 274
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ddxt oncreate test int"

    .line 275
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    const-string v1, "TestInterceptorService"

    invoke-direct {v0, v1, p0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mNetworkBinder:Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;

    .line 278
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/network/ProcessNetworkBinder;->start()V

    .line 280
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptorCB:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;-><init>(Landroid/content/Context;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$INetworkInterceptorCB;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    .line 281
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->initialize()Z

    .line 283
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->initProxyChannel()V

    return-void
.end method

.method public onDataReceived([B)V
    .locals 3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ddx proxy received data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 214
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mTxFlowMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    if-nez v1, :cond_0

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "missing flow for txid: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    invoke-virtual {v1, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;->writeData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mInterceptor:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->disable()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mProxyChannel:Lcom/cisco/anyconnect/common/network/SelectSocketChannel;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0}, Lcom/cisco/anyconnect/common/network/SelectSocketChannel;->close()V

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->mRemoveClosedFlows:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "ddxt ondestroy"

    .line 298
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p1, "ddxt start test interceptor"

    .line 48
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
