.class Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;
.super Landroid/os/ResultReceiver;
.source "YubikeyCertStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->getClientCert(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

.field final synthetic val$s:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;Landroid/os/Handler;Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->val$s:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fgetmLock(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo p1, "yubikey_cert"

    .line 89
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_0

    .line 92
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->val$s:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fgetmGroup(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fputmCertInfo(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fgetmLock(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 97
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
