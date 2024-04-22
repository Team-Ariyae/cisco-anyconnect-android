.class Lcom/cisco/android/nchs/support/ics/ICSSupportService$4;
.super Ljava/lang/Object;
.source "ICSSupportService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/support/ics/ICSSupportService;->onRevoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/support/ics/ICSSupportService;)V
    .locals 0

    .line 583
    iput-object p1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$4;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 586
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "VPN revoked"

    const-string v2, "ICSSupportService"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRevoke()"

    .line 587
    invoke-static {v2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildFunctionEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cisco.android.nchs.VPN_REVOKED"

    .line 592
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    iget-object v1, p0, Lcom/cisco/android/nchs/support/ics/ICSSupportService$4;->this$0:Lcom/cisco/android/nchs/support/ics/ICSSupportService;

    invoke-virtual {v1, v0}, Lcom/cisco/android/nchs/support/ics/ICSSupportService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
