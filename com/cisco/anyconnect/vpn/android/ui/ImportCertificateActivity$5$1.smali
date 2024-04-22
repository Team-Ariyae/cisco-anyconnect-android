.class Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;
.super Ljava/lang/Object;
.source "ImportCertificateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

.field final synthetic val$certHash:[B

.field final synthetic val$result:Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[B)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->val$result:Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->val$certHash:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 363
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->val$result:Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;->getCode()Lcom/cisco/android/nchs/aidl/NCHSReturnCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->checkCertImportError(Lcom/cisco/android/nchs/aidl/NCHSReturnCode;)V

    .line 365
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->val$certHash:[B

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$monImportSucceeded(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;[B)V
    :try_end_0
    .catch Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 369
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$5;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity$ImportFailedException;->getErrorText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;->-$$Nest$monImportFailed(Lcom/cisco/anyconnect/vpn/android/ui/ImportCertificateActivity;Ljava/lang/String;)V

    return-void
.end method
