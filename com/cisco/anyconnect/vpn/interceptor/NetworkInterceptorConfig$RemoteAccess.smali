.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteAccess"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess$Builder;
    }
.end annotation


# instance fields
.field isExcludeSplitDnsDomains:Z

.field isIncludeDns:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 287
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

    .line 309
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 310
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;

    .line 312
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isIncludeDns:Z

    iget-boolean v3, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isIncludeDns:Z

    if-eq v2, v3, :cond_3

    return v1

    .line 316
    :cond_3
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isExcludeSplitDnsDomains:Z

    iget-boolean p1, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isExcludeSplitDnsDomains:Z

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 325
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;-><init>()V

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isIncludeDns:Z

    .line 326
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Z)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$RemoteAccess;->isExcludeSplitDnsDomains:Z

    .line 327
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Z)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->get()I

    move-result v0

    return v0
.end method
