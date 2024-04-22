.class Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$2;
.super Ljava/lang/Object;
.source "QRScanActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->onResume()V
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

    .line 117
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;->finish()V

    return-void
.end method
