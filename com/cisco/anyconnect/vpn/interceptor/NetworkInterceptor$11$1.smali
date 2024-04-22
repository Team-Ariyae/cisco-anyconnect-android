.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$1;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;->onServiceDisconnected(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$1;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmAVFService(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/android/nchs/aidl/IICSSupportService;)V

    return-void
.end method
