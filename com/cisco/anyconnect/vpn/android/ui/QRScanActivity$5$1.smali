.class Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;
.super Ljava/lang/Object;
.source "QRScanActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

.field final synthetic val$barcode:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;Landroid/util/SparseArray;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->val$barcode:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "QRScanActivity"

    const-string v1, "Invalid scheme: "

    .line 219
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v2, v2, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->getBarcodeFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->val$barcode:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/barcode/Barcode;

    iget-object v2, v2, Lcom/google/android/gms/vision/barcode/Barcode;->displayValue:Ljava/lang/String;

    .line 224
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fgetmBarcodeInfo(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-static {v4}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fgetmCameraSource(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 226
    iget-object v4, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v4, v4, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->setBarcodeFlag(Ljava/lang/Boolean;)V

    .line 229
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "anyconnect"

    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 233
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "allow_exit_app"

    .line 234
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v3, v3, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    const/16 v4, 0xd07

    invoke-virtual {v3, v1, v4}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 239
    :cond_1
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->val$errDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 245
    :goto_0
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid URI syntax: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->val$errDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return-void
.end method
