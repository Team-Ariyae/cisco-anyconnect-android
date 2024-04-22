.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;,
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Builder;
    }
.end annotation


# instance fields
.field private excludeDnsQueries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private includeDnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private remoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

.field private standalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;


# direct methods
.method static bridge synthetic -$$Nest$fputexcludeDnsQueries(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->excludeDnsQueries:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputincludeDnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->includeDnsServers:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputremoteAccess(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->remoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstandalone(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->standalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 30
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 31
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;

    .line 33
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->standalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->standalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility;->isEqualWithPossibleNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->remoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->remoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility;->isEqualWithPossibleNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 41
    :cond_4
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->excludeDnsQueries:Ljava/util/List;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->excludeDnsQueries:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/CollectionUtility;->isEqualIgnoreOrder(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 45
    :cond_5
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->includeDnsServers:Ljava/util/List;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->includeDnsServers:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/data/CollectionUtility;->isEqualIgnoreOrder(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public getRemoteAccess()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->remoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    return-object v0
.end method

.method public getStandalone()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->standalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->standalone:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    .line 55
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->remoteAccess:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    .line 56
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->excludeDnsQueries:Ljava/util/List;

    .line 57
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;->includeDnsServers:Ljava/util/List;

    .line 58
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->get()I

    move-result v0

    return v0
.end method
