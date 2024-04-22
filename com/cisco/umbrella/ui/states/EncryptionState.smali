.class public final enum Lcom/cisco/umbrella/ui/states/EncryptionState;
.super Ljava/lang/Enum;
.source "EncryptionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/ui/states/EncryptionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/ui/states/EncryptionState;

.field public static final enum ENCRYPTED:Lcom/cisco/umbrella/ui/states/EncryptionState;

.field public static final enum OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

.field public static final enum UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;


# instance fields
.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 21
    new-instance v0, Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_not_available:I

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/umbrella/ui/states/EncryptionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    .line 22
    new-instance v1, Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_dns_encryption_state_on:I

    const-string v4, "ENCRYPTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/umbrella/ui/states/EncryptionState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/umbrella/ui/states/EncryptionState;->ENCRYPTED:Lcom/cisco/umbrella/ui/states/EncryptionState;

    .line 23
    new-instance v2, Lcom/cisco/umbrella/ui/states/EncryptionState;

    sget v4, Lcom/cisco/umbrella/R$string;->umbrella_dns_encryption_state_off:I

    const-string v6, "OFF"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/umbrella/ui/states/EncryptionState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/umbrella/ui/states/EncryptionState;->OFF:Lcom/cisco/umbrella/ui/states/EncryptionState;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/cisco/umbrella/ui/states/EncryptionState;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 19
    sput-object v4, Lcom/cisco/umbrella/ui/states/EncryptionState;->$VALUES:[Lcom/cisco/umbrella/ui/states/EncryptionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/cisco/umbrella/ui/states/EncryptionState;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/EncryptionState;
    .locals 1

    .line 19
    const-class v0, Lcom/cisco/umbrella/ui/states/EncryptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/ui/states/EncryptionState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/ui/states/EncryptionState;
    .locals 1

    .line 19
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->$VALUES:[Lcom/cisco/umbrella/ui/states/EncryptionState;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/ui/states/EncryptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/ui/states/EncryptionState;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 31
    iget v0, p0, Lcom/cisco/umbrella/ui/states/EncryptionState;->resId:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
