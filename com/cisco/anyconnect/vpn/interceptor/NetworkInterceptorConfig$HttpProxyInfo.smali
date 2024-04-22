.class public Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;
.super Ljava/lang/Object;
.source "NetworkInterceptorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpProxyInfo"
.end annotation


# instance fields
.field excludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field host:Ljava/lang/String;

.field port:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;->host:Ljava/lang/String;

    .line 150
    iput p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;->port:I

    .line 151
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptorConfig$HttpProxyInfo;->excludeList:Ljava/util/List;

    return-void
.end method
