.class Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$3;
.super Ljava/util/ArrayList;
.source "TestInterceptorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;->doConfigure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$3;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "*.cisco.com"

    .line 121
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$3;->add(Ljava/lang/Object;)Z

    const-string p1, "*.synocorp.net"

    .line 122
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/interceptor/TestInterceptorService$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
