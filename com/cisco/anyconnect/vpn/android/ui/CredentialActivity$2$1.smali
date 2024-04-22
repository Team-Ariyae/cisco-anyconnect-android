.class Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;
.super Ljava/lang/Object;
.source "CredentialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

.field final synthetic val$allowImport:Z

.field final synthetic val$banner:Ljava/lang/String;

.field final synthetic val$certDer:[B

.field final synthetic val$confirmReasons:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;Ljava/lang/String;[BZ[Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$banner:Ljava/lang/String;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$certDer:[B

    iput-boolean p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$allowImport:Z

    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$confirmReasons:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.BANNER_ACTIVITY_SHOW_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_BANNER_STRING"

    .line 126
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$banner:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$certDer:[B

    invoke-direct {v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnCertificate;-><init>([B)V

    const-string v2, "KEY_BANNER_CERTIFICATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "IMPORT_ALLOWED"

    .line 128
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$allowImport:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->val$confirmReasons:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    const-string v2, "CONFIRM_REASONS"

    .line 131
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;

    iget-object v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/CredentialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
