.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Standalone"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    }
.end annotation


# instance fields
.field private addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;",
            ">;"
        }
    .end annotation
.end field

.field private allowFamily:I

.field private dnsSearchDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpProxy:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;

.field private includeRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;",
            ">;"
        }
    .end annotation
.end field

.field private sessionName:Ljava/lang/String;

.field private vpnRequestDescription:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetaddresses(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->addresses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdnsSearchDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsSearchDomains:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsServers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetincludeRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->includeRoutes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaddresses(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->addresses:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputallowFamily(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;I)V
    .locals 0

    iput p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->allowFamily:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdnsSearchDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsSearchDomains:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsServers:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhttpProxy(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->httpProxy:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputincludeRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->includeRoutes:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsessionName(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->sessionName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvpnRequestDescription(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->vpnRequestDescription:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 155
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

    .line 169
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 170
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    .line 172
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->addresses:Ljava/util/List;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->addresses:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/CollectionUtility;->isEqualIgnoreOrder(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 176
    :cond_3
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsServers:Ljava/util/List;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsServers:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility;->isEqualWithPossibleNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 180
    :cond_4
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsSearchDomains:Ljava/util/List;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsSearchDomains:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility;->isEqualWithPossibleNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 184
    :cond_5
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->includeRoutes:Ljava/util/List;

    iget-object v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->includeRoutes:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/cisco/anyconnect/vpn/android/data/CollectionUtility;->isEqualIgnoreOrder(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 188
    :cond_6
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->sessionName:Ljava/lang/String;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->sessionName:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility;->isEqualWithPossibleNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public getDnsServers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsServers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIncludeRoutes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->includeRoutes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->sessionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnRequestDescription()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->vpnRequestDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 197
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->addresses:Ljava/util/List;

    .line 198
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsServers:Ljava/util/List;

    .line 199
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->dnsSearchDomains:Ljava/util/List;

    .line 200
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->includeRoutes:Ljava/util/List;

    .line 201
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->sessionName:Ljava/lang/String;

    .line 202
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->get()I

    move-result v0

    return v0
.end method
