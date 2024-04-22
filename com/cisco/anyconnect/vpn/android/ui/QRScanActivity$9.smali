.class Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$9;
.super Ljava/lang/Object;
.source "QRScanActivity.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->cameraFocus(Landroid/graphics/Rect;)V
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

    .line 446
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$9;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 1

    .line 449
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "QRScanActivity"

    const-string v0, "Camera is focused."

    invoke-static {p1, p2, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
