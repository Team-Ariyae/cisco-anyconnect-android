.class Lcom/cisco/android/nchs/NCHSProxyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NCHSProxyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/android/nchs/NCHSProxyActivity;->initBroadcastReceiver(Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NCHSProxyActivity;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NCHSProxyActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity$1;->this$0:Lcom/cisco/android/nchs/NCHSProxyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result p2

    const-string v0, "NCHSProxyActivity"

    if-nez p2, :cond_0

    .line 164
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Package URI passed was of unknown form."

    invoke-static {p1, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object p2, p0, Lcom/cisco/android/nchs/NCHSProxyActivity$1;->this$0:Lcom/cisco/android/nchs/NCHSProxyActivity;

    invoke-static {p2}, Lcom/cisco/android/nchs/NCHSProxyActivity;->-$$Nest$fgetmPackageID(Lcom/cisco/android/nchs/NCHSProxyActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 173
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PackageID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was successfully operated on"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/cisco/android/nchs/NCHSProxyActivity$1;->this$0:Lcom/cisco/android/nchs/NCHSProxyActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/cisco/android/nchs/NCHSProxyActivity;->-$$Nest$fputmOperationCompletedSuccessfully(Lcom/cisco/android/nchs/NCHSProxyActivity;Z)V

    :cond_1
    return-void
.end method
