.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->ClientCertificateCB(Lcom/cisco/anyconnect/vpn/android/service/IVpnCertificateList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;)V
    .locals 0

    .line 1650
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1653
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmParameters(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->CERT_COMMON_NAME:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;

    .line 1654
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$VpnUriParameter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1653
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1655
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110201

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1658
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mprocessCreate(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1660
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to perform the requested action: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v3

    .line 1663
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "URIHandlerActivity"

    .line 1660
    invoke-static {v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmAction(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v2

    .line 1666
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1664
    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mexitActivity(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
