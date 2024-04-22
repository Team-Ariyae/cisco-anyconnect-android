.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleFlowData(Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

.field final synthetic val$byteBuffer:Ljava/nio/ByteBuffer;

.field final synthetic val$networkFlow:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    iput-object p2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;->val$networkFlow:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    iput-object p3, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;->val$byteBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 558
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;->val$networkFlow:Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;

    iget-object v2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$5;->val$byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$900(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkFlow;Ljava/nio/ByteBuffer;)V

    return-void
.end method
