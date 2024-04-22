.class Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$2;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

.field final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;Landroid/os/IBinder;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$2;->val$service:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$2;->val$service:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/cisco/android/nchs/aidl/IICSSupportService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/cisco/android/nchs/aidl/IICSSupportService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$fputmAVFService(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;Lcom/cisco/android/nchs/aidl/IICSSupportService;)V

    .line 428
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11$2;->this$1:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$11;->this$0:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;->-$$Nest$monAVFConnected(Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;)V

    return-void
.end method
