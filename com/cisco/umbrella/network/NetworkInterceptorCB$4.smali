.class Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;
.super Ljava/lang/Object;
.source "NetworkInterceptorCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/network/NetworkInterceptorCB;->handleStateChange(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

.field final synthetic val$newState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    iput-object p2, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;->val$newState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;->this$0:Lcom/cisco/umbrella/network/NetworkInterceptorCB;

    iget-object v1, p0, Lcom/cisco/umbrella/network/NetworkInterceptorCB$4;->val$newState:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-static {v0, v1}, Lcom/cisco/umbrella/network/NetworkInterceptorCB;->access$800(Lcom/cisco/umbrella/network/NetworkInterceptorCB;Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;)V

    return-void
.end method
