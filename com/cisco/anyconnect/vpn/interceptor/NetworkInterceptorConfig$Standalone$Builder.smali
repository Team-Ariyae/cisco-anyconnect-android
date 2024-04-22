.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    return-void
.end method


# virtual methods
.method public addAddress(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetaddresses(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputaddresses(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetaddresses(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDnsSearchDomains(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetdnsSearchDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputdnsSearchDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetdnsSearchDomains(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDnsServer(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetdnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputdnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetdnsServers(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addIncludeRoute(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetincludeRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputincludeRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/util/List;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fgetincludeRoutes(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    return-object v0
.end method

.method public setAllowFamily(I)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputallowFamily(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;I)V

    return-object p0
.end method

.method public setHttpProxy(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputhttpProxy(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;)V

    return-object p0
.end method

.method public setSessionName(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputsessionName(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVpnRequestDescription(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;

    invoke-static {v0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;->-$$Nest$fputvpnRequestDescription(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Standalone;Ljava/lang/String;)V

    return-object p0
.end method
