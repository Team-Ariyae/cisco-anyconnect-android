.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subnet"
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private prefixLen:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->address:Ljava/lang/String;

    .line 112
    iput p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->prefixLen:I

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

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 120
    :cond_2
    check-cast p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;

    .line 122
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->address:Ljava/lang/String;

    invoke-virtual {v2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 126
    :cond_3
    iget v2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->prefixLen:I

    iget p1, p1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->prefixLen:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 135
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;-><init>()V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->address:Ljava/lang/String;

    .line 136
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(Ljava/lang/Object;)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    iget v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$Subnet;->prefixLen:I

    .line 137
    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->add(I)Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/data/ObjectUtility$HashCodeMaker;->get()I

    move-result v0

    return v0
.end method
