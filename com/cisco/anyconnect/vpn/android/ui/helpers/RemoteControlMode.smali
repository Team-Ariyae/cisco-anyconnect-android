.class public final enum Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;
.super Ljava/lang/Enum;
.source "RemoteControlMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

.field public static final enum Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

.field public static final enum Enabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

.field public static final enum Prompt:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;


# instance fields
.field private mDescriptiveTextResourceID:I

.field private mLabelTextResourceID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 28
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    const v1, 0x7f11011f

    const v2, 0x7f110270

    const-string v3, "Disabled"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Disabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    .line 35
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    const v2, 0x7f110263

    const v3, 0x7f110273

    const-string v5, "Prompt"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Prompt:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    .line 41
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    const v3, 0x7f11012a

    const v5, 0x7f110271

    const-string v7, "Enabled"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v3, v5}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->Enabled:Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    aput-object v0, v3, v4

    aput-object v1, v3, v6

    aput-object v2, v3, v8

    .line 23
    sput-object v3, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->mLabelTextResourceID:I

    .line 53
    iput p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->mDescriptiveTextResourceID:I

    return-void
.end method

.method public static getDescriptiveStringValues()[Ljava/lang/String;
    .locals 4

    .line 102
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v0

    .line 103
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 105
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 107
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->getDescriptiveString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 3

    .line 86
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTranslatedStrings()[Ljava/lang/String;
    .locals 3

    .line 70
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 74
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;
    .locals 1

    .line 23
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;
    .locals 1

    .line 23
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;

    return-object v0
.end method


# virtual methods
.method public getDescriptiveString()Ljava/lang/String;
    .locals 1

    .line 62
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->mDescriptiveTextResourceID:I

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
