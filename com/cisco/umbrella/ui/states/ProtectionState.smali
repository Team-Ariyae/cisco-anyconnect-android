.class public final enum Lcom/cisco/umbrella/ui/states/ProtectionState;
.super Ljava/lang/Enum;
.source "ProtectionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/umbrella/ui/states/ProtectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum BEHIND_VA:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum FAIL_OPEN_CLOSED:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum MISSING_DOMAINS:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum NOT_REGISTERED:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum PROTECTED:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum PROTECTED_NETWORK:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public static final enum RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;


# instance fields
.field private final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 21
    new-instance v0, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_not_available:I

    const-string v2, "RESERVED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 22
    new-instance v1, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_stats_protection_status_value_protected:I

    const-string v4, "PROTECTED"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/umbrella/ui/states/ProtectionState;->PROTECTED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 23
    new-instance v2, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v4, Lcom/cisco/umbrella/R$string;->umbrella_stats_protection_status_value_unprotected:I

    const-string v6, "OPEN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/cisco/umbrella/ui/states/ProtectionState;->OPEN:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 24
    new-instance v4, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v6, Lcom/cisco/umbrella/R$string;->umbrella_stats_protection_status_value_unprotected:I

    const-string v8, "NOT_REGISTERED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/cisco/umbrella/ui/states/ProtectionState;->NOT_REGISTERED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 25
    new-instance v6, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v8, Lcom/cisco/umbrella/R$string;->umbrella_protected_network:I

    const-string v10, "PROTECTED_NETWORK"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/cisco/umbrella/ui/states/ProtectionState;->PROTECTED_NETWORK:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 26
    new-instance v8, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v10, Lcom/cisco/umbrella/R$string;->umbrella_behind_VA:I

    const-string v12, "BEHIND_VA"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/cisco/umbrella/ui/states/ProtectionState;->BEHIND_VA:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 27
    new-instance v10, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v12, Lcom/cisco/umbrella/R$string;->umbrella_stats_protection_status_value_unprotected:I

    const-string v14, "MISSING_DOMAINS"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/cisco/umbrella/ui/states/ProtectionState;->MISSING_DOMAINS:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 28
    new-instance v12, Lcom/cisco/umbrella/ui/states/ProtectionState;

    sget v14, Lcom/cisco/umbrella/R$string;->umbrella_stats_protection_status_value_unprotected:I

    const-string v15, "FAIL_OPEN_CLOSED"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/cisco/umbrella/ui/states/ProtectionState;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/cisco/umbrella/ui/states/ProtectionState;->FAIL_OPEN_CLOSED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/cisco/umbrella/ui/states/ProtectionState;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    .line 19
    sput-object v14, Lcom/cisco/umbrella/ui/states/ProtectionState;->$VALUES:[Lcom/cisco/umbrella/ui/states/ProtectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/cisco/umbrella/ui/states/ProtectionState;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/umbrella/ui/states/ProtectionState;
    .locals 1

    .line 19
    const-class v0, Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/umbrella/ui/states/ProtectionState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/umbrella/ui/states/ProtectionState;
    .locals 1

    .line 19
    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->$VALUES:[Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-virtual {v0}, [Lcom/cisco/umbrella/ui/states/ProtectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/umbrella/ui/states/ProtectionState;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 38
    iget v0, p0, Lcom/cisco/umbrella/ui/states/ProtectionState;->resId:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
