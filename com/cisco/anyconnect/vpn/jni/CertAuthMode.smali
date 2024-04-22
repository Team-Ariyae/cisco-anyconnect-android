.class public final enum Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
.super Ljava/lang/Enum;
.source "CertAuthMode.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public static final enum Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public static final enum Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field public static final enum Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

.field private static mModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const-string v1, "Automatic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Automatic:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 6
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const-string v3, "Disabled"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Disabled:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 7
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const-string v5, "Manual"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->Manual:Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    .line 13
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->mModes:[Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 17
    sget-object v5, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->mModes:[Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getStringValue(I)Ljava/lang/String;
    .locals 2

    .line 28
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->getStringValues()[Ljava/lang/String;

    move-result-object v0

    .line 30
    array-length v1, v0

    if-le v1, p0, :cond_0

    .line 32
    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStringValues()[Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->mModes:[Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    .locals 1

    .line 3
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/CertAuthMode;

    return-object v0
.end method
