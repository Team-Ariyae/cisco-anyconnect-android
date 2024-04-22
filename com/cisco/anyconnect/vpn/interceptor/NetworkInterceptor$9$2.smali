.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9$2;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;Landroid/os/IBinder;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9$2;->val$service:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/cisco/android/nchs/aidl/INetworkComponentHostService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmNCHS(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;)V

    .line 382
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$9;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$monNCHSConnected(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    return-void
.end method
