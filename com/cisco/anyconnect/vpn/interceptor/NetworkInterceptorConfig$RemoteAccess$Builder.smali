.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    return-void
.end method


# virtual methods
.method public build()Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    return-object v0
.end method

.method public setIncludeDns(Z)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isIncludeDns:Z

    .line 296
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;->mTarget:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    iput-boolean p1, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isExcludeSplitDnsDomains:Z

    return-object p0
.end method
