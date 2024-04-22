.class public Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;
.super Ljava/lang/Object;
.source "YubikeyCertStore.java"


# instance fields
.field private final YUBIKEY_TIMEOUT:I

.field private mCertInfo:Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mGroup:Ljava/lang/String;

.field private mHasEnumerated:Z

.field private final mLock:Ljava/lang/Object;

.field private mSignature:[B


# direct methods
.method static bridge synthetic -$$Nest$fgetmGroup(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mGroup:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCertInfo(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mCertInfo:Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSignature(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;[B)V
    .locals 0

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mSignature:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mEnabled:Z

    .line 35
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mHasEnumerated:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mSignature:[B

    .line 37
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mCertInfo:Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    const v0, 0xea60

    .line 39
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->YUBIKEY_TIMEOUT:I

    .line 43
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mGroup:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public enableYubikey(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mCertInfo:Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mHasEnumerated:Z

    :cond_0
    return-void
.end method

.method public getClientCert(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;
    .locals 7

    .line 61
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->supportsYubikey()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 66
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    if-ne v0, p1, :cond_1

    const-string p1, "Invalid slot passed in"

    .line 68
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 73
    :cond_1
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mHasEnumerated:Z

    if-eqz v0, :cond_2

    .line 75
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mCertInfo:Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    return-object p1

    .line 78
    :cond_2
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$1;-><init>(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;Landroid/os/Handler;Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.YUBIKEY_ENUMERATE_SHOW_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "yubikey_slot"

    .line 103
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "yubikey_result_receiver"

    .line 104
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mHasEnumerated:Z

    .line 108
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 112
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mLock:Ljava/lang/Object;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    cmp-long v0, v5, v3

    if-ltz v0, :cond_3

    const-string v0, "YubikeyActivity timed out"

    .line 120
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.YUIBKEY_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Exception while waiting for Yubikey activity"

    .line 126
    invoke-static {p0, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.YUIBKEY_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    :cond_3
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mCertInfo:Lcom/cisco/anyconnect/vpn/android/crypto/CertificateInfo;

    return-object p1

    .line 129
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public sign(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;[B)[B
    .locals 6

    .line 136
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cisco/android/nchs/permissions/Prerequisites;->supportsYubikey()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 141
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    if-ne v0, p1, :cond_1

    const-string p1, "Invalid slot passed in"

    .line 143
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 147
    :cond_1
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;

    invoke-direct {v0, p0, v1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore$2;-><init>(Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;Landroid/os/Handler;)V

    .line 165
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mSignature:[B

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.cisco.anyconnect.vpn.android.YUBIKEY_SIGN_SHOW_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 167
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "yubikey_slot"

    .line 168
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "yubikey_sign_hash"

    .line 169
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo p1, "yubikey_result_receiver"

    .line 170
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mLock:Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    invoke-virtual {p2, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long p2, v4, v2

    if-ltz p2, :cond_2

    const-string p2, "YubikeyActivity timed out"

    .line 185
    invoke-static {p0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->warn(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.YUIBKEY_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "Exception while waiting for Yubikey activity"

    .line 191
    invoke-static {p0, v0, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.YUIBKEY_ACTIVITY_CLOSE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeyCertStore;->mSignature:[B

    return-object p1

    .line 194
    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_3
    :goto_2
    return-object v1
.end method
