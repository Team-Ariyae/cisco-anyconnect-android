.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mRemoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

.field private mStandalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

.field private mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    return-void
.end method


# virtual methods
.method public build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mStandalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->-$$Nest$fputstandalone(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mRemoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    if-eqz v0, :cond_1

    .line 99
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;->build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->-$$Nest$fputremoteAccess(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    return-object v0
.end method

.method public excludeDnsQueries(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->-$$Nest$fputexcludeDnsQueries(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Ljava/util/List;)V

    return-object p0
.end method

.method public includeDnsServers(Ljava/util/List;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->-$$Nest$fputincludeDnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Ljava/util/List;)V

    return-object p0
.end method

.method public remoteAccess()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mRemoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mRemoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mRemoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;

    return-object v0
.end method

.method public standalone()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mStandalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mStandalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;->mStandalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;

    return-object v0
.end method
