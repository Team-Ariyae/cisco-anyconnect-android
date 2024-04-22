.class public Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;
.super Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.source "QRScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "QRScanActivity"

.field private static final GMS_HANDLE_INTENT:I = 0x232a

.field private static final REQUEST_PERMISSION_CAMERA:I = 0x2


# instance fields
.field private mBarcodeDetected:Ljava/lang/Boolean;

.field private mBarcodeInfo:Landroid/widget/TextView;

.field private mCameraSource:Lcom/google/android/gms/vision/CameraSource;

.field private mCameraView:Landroid/view/SurfaceView;

.field private mPermissionRequested:Ljava/lang/Boolean;

.field private mSurfaceCreated:Ljava/lang/Boolean;

.field private final surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBarcodeInfo(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraSource(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)Lcom/google/android/gms/vision/CameraSource;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSurfaceCreated(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mSurfaceCreated:Ljava/lang/Boolean;

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartCamera(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->startCamera()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;-><init>()V

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mSurfaceCreated:Ljava/lang/Boolean;

    .line 50
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mPermissionRequested:Ljava/lang/Boolean;

    .line 51
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeDetected:Ljava/lang/Boolean;

    .line 326
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$8;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    return-void
.end method

.method private cameraFocus(Landroid/graphics/Rect;)V
    .locals 11

    const-string v0, "QRScanActivity"

    .line 413
    const-class v1, Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 415
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    .line 416
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/hardware/Camera;

    if-ne v6, v7, :cond_2

    const/4 v1, 0x1

    .line 417
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 421
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 422
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v5

    if-nez v5, :cond_0

    .line 423
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "Failed to get camera focus area."

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 426
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 427
    iget v6, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v6, v6, 0x7d0

    iget-object v7, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    const/16 v7, 0x3e8

    sub-int/2addr v6, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v8, v8, 0x7d0

    iget-object v9, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    .line 428
    invoke-virtual {v9}, Landroid/view/SurfaceView;->getHeight()I

    move-result v9

    div-int/2addr v8, v9

    sub-int/2addr v8, v7

    iget v9, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit16 v9, v9, 0x7d0

    iget-object v10, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    .line 429
    invoke-virtual {v10}, Landroid/view/SurfaceView;->getWidth()I

    move-result v10

    div-int/2addr v9, v10

    sub-int/2addr v9, v7

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 p1, p1, 0x7d0

    iget-object v10, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    .line 430
    invoke-virtual {v10}, Landroid/view/SurfaceView;->getHeight()I

    move-result v10

    div-int/2addr p1, v10

    sub-int/2addr p1, v7

    .line 427
    invoke-virtual {v5, v6, v8, v9, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 432
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 433
    new-instance v6, Landroid/hardware/Camera$Area;

    invoke-direct {v6, v5, v7}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.camera.autofocus"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v5, "Set camera to auto focus."

    invoke-static {v3, v0, v5}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "auto"

    .line 439
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 442
    :cond_1
    invoke-virtual {v4, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 443
    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    if-eqz v3, :cond_3

    .line 446
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$9;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$9;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    invoke-virtual {v2, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 455
    :goto_1
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "Failed to focus camera."

    invoke-static {v1, v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private createCameraSource()Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;
    .locals 4

    .line 165
    new-instance v0, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->setBarcodeFormats(I)Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->build()Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->isOperational()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "BarcodeDetector dependencies are not yet available."

    const-string v2, "QRScanActivity"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 177
    invoke-virtual {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 181
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "BarcodeDetector dependencies cannot be downloaded due to low device storage"

    invoke-static {v0, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->LOW_STORAGE:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    return-object v0

    .line 184
    :cond_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->NOT_DOWNLOADEDED:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    return-object v0

    .line 187
    :cond_2
    new-instance v1, Lcom/google/android/gms/vision/CameraSource$Builder;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    invoke-virtual {v1}, Lcom/google/android/gms/vision/CameraSource$Builder;->build()Lcom/google/android/gms/vision/CameraSource;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    .line 189
    new-instance v1, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v2, 0x7f120131

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1100aa

    .line 190
    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    const v2, 0x7f11026e

    .line 191
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$4;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$4;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    const v3, 0x7f110221

    .line 192
    invoke-virtual {v1, v3, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 200
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$5;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->setProcessor(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 253
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    return-object v0
.end method

.method private requestCameraPermission()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    .line 271
    invoke-static {p0, v3}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    .line 273
    invoke-static {p0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 278
    :cond_0
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const v3, 0x7f120131

    invoke-direct {v2, p0, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1100aa

    .line 279
    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f110232

    .line 280
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v2

    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;

    invoke-direct {v3, p0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Landroid/app/Activity;[Ljava/lang/String;)V

    const v1, 0x7f110221

    .line 281
    invoke-virtual {v2, v1, v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 290
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mPermissionRequested:Ljava/lang/Boolean;

    return-void
.end method

.method private startCamera()V
    .locals 4

    const-string v0, "android.permission.CAMERA"

    .line 362
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 368
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v2, "QRScanActivity"

    const-string v3, "Unable to start camera source"

    invoke-static {v1, v2, v3, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->release()V

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mPermissionRequested:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->requestCameraPermission()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startScan()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mSurfaceCreated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->startCamera()V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->surfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    return-void
.end method


# virtual methods
.method declared-synchronized getBarcodeFlag()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeDetected:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0xd07

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "back_to_primary_activity"

    .line 385
    invoke-virtual {p3, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 387
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 388
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 389
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 390
    invoke-virtual {p0, p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->setResult(ILandroid/content/Intent;)V

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00b8

    .line 68
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->setContentView(I)V

    const p1, 0x7f0a0099

    .line 69
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraView:Landroid/view/SurfaceView;

    const p1, 0x7f0a01a7

    .line 70
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeInfo:Landroid/widget/TextView;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->release()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 145
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mSurfaceCreated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mCameraSource:Lcom/google/android/gms/vision/CameraSource;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .line 303
    array-length p1, p3

    const-string p2, "QRScanActivity"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    aget v0, p3, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera permission not granted: Result code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, p3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$7;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$7;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    .line 319
    new-instance p2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const p3, 0x7f120131

    invoke-direct {p2, p0, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const p3, 0x7f1100aa

    .line 320
    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    const p3, 0x7f1101ff

    .line 321
    invoke-virtual {p2, p3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p2

    const p3, 0x7f110221

    .line 322
    invoke-virtual {p2, p3, p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 305
    :cond_1
    :goto_0
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p3, "Camera permission granted."

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 76
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onResume()V

    .line 78
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f120131

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeInfo:Landroid/widget/TextView;

    const v2, 0x7f110047

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->createCameraSource()Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    move-result-object v0

    .line 83
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    if-ne v2, v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->startScan()V

    goto/16 :goto_1

    .line 91
    :cond_0
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->LOW_STORAGE:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    if-ne v2, v0, :cond_1

    const v0, 0x7f110167

    .line 93
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f110166

    .line 97
    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    new-instance v2, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v2, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const-string v1, "Dependencies not downloaded"

    .line 100
    invoke-virtual {v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$1;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    const v2, 0x104000a

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeInfo:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$2;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$2;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    const/16 v3, 0x232a

    invoke-virtual {v1, p0, v0, v3, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 127
    :cond_3
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1100aa

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f110168

    .line 129
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$3;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$3;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;)V

    const v2, 0x7f110221

    .line 130
    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 400
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v2

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v3

    .line 403
    new-instance v4, Landroid/graphics/Rect;

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    sub-float v6, v0, v2

    float-to-int v6, v6

    div-float/2addr v3, v5

    sub-float v5, v1, v3

    float-to-int v5, v5

    add-float/2addr v0, v2

    float-to-int v0, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-direct {v4, v6, v5, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 407
    invoke-direct {p0, v4}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->cameraFocus(Landroid/graphics/Rect;)V

    .line 409
    :cond_0
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method declared-synchronized setBarcodeFlag(Ljava/lang/Boolean;)V
    .locals 0

    monitor-enter p0

    .line 258
    :try_start_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->mBarcodeDetected:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
