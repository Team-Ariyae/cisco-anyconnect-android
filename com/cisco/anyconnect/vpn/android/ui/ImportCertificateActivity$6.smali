.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;
.super Ljava/lang/Object;
.source "ImportCertificateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->ImportEndCB(ZLjava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

.field final synthetic val$dataMap:Ljava/util/Map;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$success:Z

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$dataMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 441
    :cond_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$success:Z

    const-string v1, "ImportCertificateActivity"

    if-nez v0, :cond_1

    .line 443
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ImportEndCB failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$monImportFailed(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Ljava/lang/String;)V

    return-void

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$dataMap:Ljava/util/Map;

    const-string v2, "cert_hash"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 451
    instance-of v2, v0, [B

    if-nez v2, :cond_3

    .line 453
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ImportEndCB invalid cert hash: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_3
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->val$message:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 458
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    check-cast v0, [B

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$monImportSucceeded(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;[B)V

    return-void
.end method
