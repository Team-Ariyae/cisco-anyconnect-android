.class Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;
.super Ljava/lang/Object;
.source "QRScanActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 329
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fputmSurfaceCreated(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Ljava/lang/Boolean;)V

    .line 330
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$mstartCamera(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fputmSurfaceCreated(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Ljava/lang/Boolean;)V

    .line 341
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fgetmCameraSource(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->-$$Nest$fgetmCameraSource(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 344
    :cond_0
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
