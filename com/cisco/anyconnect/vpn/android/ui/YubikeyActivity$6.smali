.class synthetic Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$6;
.super Ljava/lang/Object;
.source "YubikeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$yubico$yubikit$piv$Algorithm:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 524
    invoke-static {}, Lcom/yubico/yubikit/piv/Algorithm;->values()[Lcom/yubico/yubikit/piv/Algorithm;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$6;->$SwitchMap$com$yubico$yubikit$piv$Algorithm:[I

    :try_start_0
    sget-object v1, Lcom/yubico/yubikit/piv/Algorithm;->RSA1024:Lcom/yubico/yubikit/piv/Algorithm;

    invoke-virtual {v1}, Lcom/yubico/yubikit/piv/Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$6;->$SwitchMap$com$yubico$yubikit$piv$Algorithm:[I

    sget-object v1, Lcom/yubico/yubikit/piv/Algorithm;->RSA2048:Lcom/yubico/yubikit/piv/Algorithm;

    invoke-virtual {v1}, Lcom/yubico/yubikit/piv/Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$6;->$SwitchMap$com$yubico$yubikit$piv$Algorithm:[I

    sget-object v1, Lcom/yubico/yubikit/piv/Algorithm;->ECCP256:Lcom/yubico/yubikit/piv/Algorithm;

    invoke-virtual {v1}, Lcom/yubico/yubikit/piv/Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/YubikeyActivity$6;->$SwitchMap$com$yubico$yubikit$piv$Algorithm:[I

    sget-object v1, Lcom/yubico/yubikit/piv/Algorithm;->ECCP384:Lcom/yubico/yubikit/piv/Algorithm;

    invoke-virtual {v1}, Lcom/yubico/yubikit/piv/Algorithm;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
