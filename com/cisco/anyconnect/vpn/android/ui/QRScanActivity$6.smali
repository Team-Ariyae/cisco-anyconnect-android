.class Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;
.super Ljava/lang/Object;
.source "QRScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->requestCameraPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;->val$thisActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 285
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;->val$thisActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$6;->val$permissions:[Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
