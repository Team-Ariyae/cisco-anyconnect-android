.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;
.super Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;
.source "ImportCertificateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->startKeyChainImport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-direct {p0}, Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[B)V

    invoke-virtual {p3, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
