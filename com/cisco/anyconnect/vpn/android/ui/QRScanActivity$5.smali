.class Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;
.super Ljava/lang/Object;
.source "QRScanActivity.java"

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->createCameraSource()Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

.field final synthetic val$errDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->val$errDialog:Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object p1

    .line 212
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fgetmBarcodeInfo(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;

    invoke-direct {v1, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;Landroid/util/SparseArray;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
