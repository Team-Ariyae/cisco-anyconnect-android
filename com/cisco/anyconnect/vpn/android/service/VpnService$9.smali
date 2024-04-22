.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->handleStartCommand(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/content/Intent;)V
    .locals 0

    .line 2288
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2291
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$9;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$mhandleConnectAction(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Landroid/content/Intent;)V

    return-void
.end method
