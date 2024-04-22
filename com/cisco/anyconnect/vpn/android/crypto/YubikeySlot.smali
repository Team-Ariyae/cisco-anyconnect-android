.class public final enum Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;
.super Ljava/lang/Enum;
.source "YubikeySlot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

.field public static final enum None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

.field public static final enum Slot_9A:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

.field public static final enum Slot_9C:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

.field public static final enum Slot_9D:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

.field public static final enum Slot_9E:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;


# instance fields
.field public final mSdkEnum:Lcom/yubico/yubikit/piv/Slot;

.field public final mSlotStr:Ljava/lang/String;

.field public final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 21
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const-string v1, "Slot_9A"

    const/4 v2, 0x0

    const-string v3, "9a"

    const/16 v4, 0x9a

    sget-object v5, Lcom/yubico/yubikit/piv/Slot;->AUTHENTICATION:Lcom/yubico/yubikit/piv/Slot;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/yubico/yubikit/piv/Slot;)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->Slot_9A:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    .line 22
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const-string v8, "Slot_9C"

    const/4 v9, 0x1

    const-string v10, "9c"

    const/16 v11, 0x9c

    sget-object v12, Lcom/yubico/yubikit/piv/Slot;->SIGNATURE:Lcom/yubico/yubikit/piv/Slot;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/yubico/yubikit/piv/Slot;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->Slot_9C:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    .line 23
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const-string v14, "Slot_9D"

    const/4 v15, 0x2

    const-string v16, "9d"

    const/16 v17, 0x9d

    sget-object v18, Lcom/yubico/yubikit/piv/Slot;->KEY_MANAGEMENT:Lcom/yubico/yubikit/piv/Slot;

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/yubico/yubikit/piv/Slot;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->Slot_9D:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    .line 24
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const-string v8, "Slot_9E"

    const/4 v9, 0x3

    const-string v10, "9e"

    const/16 v11, 0x9e

    sget-object v12, Lcom/yubico/yubikit/piv/Slot;->CARD_AUTH:Lcom/yubico/yubikit/piv/Slot;

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/yubico/yubikit/piv/Slot;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->Slot_9E:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    .line 25
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const-string v14, "None"

    const/4 v15, 0x4

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/yubico/yubikit/piv/Slot;)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    aput-object v3, v4, v0

    .line 19
    sput-object v4, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/yubico/yubikit/piv/Slot;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/yubico/yubikit/piv/Slot;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->mSlotStr:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->mValue:I

    .line 35
    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->mSdkEnum:Lcom/yubico/yubikit/piv/Slot;

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;
    .locals 5

    if-eqz p0, :cond_3

    const-string v0, ""

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->values()[Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 49
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    return-object p0

    .line 44
    :cond_3
    :goto_1
    sget-object p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->None:Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;
    .locals 1

    .line 19
    const-class v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;
    .locals 1

    .line 19
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;

    return-object v0
.end method


# virtual methods
.method public getSdkEnum()Lcom/yubico/yubikit/piv/Slot;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->mSdkEnum:Lcom/yubico/yubikit/piv/Slot;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/crypto/YubikeySlot;->mSlotStr:Ljava/lang/String;

    return-object v0
.end method
