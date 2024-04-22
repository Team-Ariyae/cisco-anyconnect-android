.class Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;
.super Landroid/os/ResultReceiver;
.source "YubikeyCertStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->sign(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;Landroid/os/Handler;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fgetmLock(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 157
    :try_start_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    const-string/jumbo v1, "yubikey_signature"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fputmSignature(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;[B)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;->this$0:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->-$$Nest$fgetmLock(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 161
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
