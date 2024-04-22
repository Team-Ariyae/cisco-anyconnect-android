.class public final enum Lcom/cisco/anyconnect/android/util/ACLogModule;
.super Ljava/lang/Enum;
.source "ACLogModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/android/util/ACLogModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/android/util/ACLogModule;

.field public static final enum AC_NVM:Lcom/cisco/anyconnect/android/util/ACLogModule;

.field public static final enum AC_UMBRELLA:Lcom/cisco/anyconnect/android/util/ACLogModule;

.field public static final enum AC_VPN:Lcom/cisco/anyconnect/android/util/ACLogModule;


# instance fields
.field private mLogSize:I

.field private mStrModuleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/cisco/anyconnect/android/util/ACLogModule;

    const-string v1, "VPN"

    const/16 v2, 0x1388

    const-string v3, "AC_VPN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/cisco/anyconnect/android/util/ACLogModule;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_VPN:Lcom/cisco/anyconnect/android/util/ACLogModule;

    .line 21
    new-instance v1, Lcom/cisco/anyconnect/android/util/ACLogModule;

    const-string v2, "AC_NVM"

    const/4 v3, 0x1

    const-string v5, "NVM"

    const/16 v6, 0x3e8

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/cisco/anyconnect/android/util/ACLogModule;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_NVM:Lcom/cisco/anyconnect/android/util/ACLogModule;

    .line 22
    new-instance v2, Lcom/cisco/anyconnect/android/util/ACLogModule;

    const-string v5, "UMBRELLA"

    const-string v7, "AC_UMBRELLA"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v6}, Lcom/cisco/anyconnect/android/util/ACLogModule;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_UMBRELLA:Lcom/cisco/anyconnect/android/util/ACLogModule;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/android/util/ACLogModule;

    aput-object v0, v5, v4

    aput-object v1, v5, v3

    aput-object v2, v5, v8

    .line 18
    sput-object v5, Lcom/cisco/anyconnect/android/util/ACLogModule;->$VALUES:[Lcom/cisco/anyconnect/android/util/ACLogModule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/cisco/anyconnect/android/util/ACLogModule;->mStrModuleName:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/cisco/anyconnect/android/util/ACLogModule;->mLogSize:I

    return-void
.end method

.method public static getModule(Ljava/lang/String;)Lcom/cisco/anyconnect/android/util/ACLogModule;
    .locals 5

    .line 35
    invoke-static {}, Lcom/cisco/anyconnect/android/util/ACLogModule;->values()[Lcom/cisco/anyconnect/android/util/ACLogModule;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 37
    invoke-virtual {v3}, Lcom/cisco/anyconnect/android/util/ACLogModule;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    sget-object p0, Lcom/cisco/anyconnect/android/util/ACLogModule;->AC_VPN:Lcom/cisco/anyconnect/android/util/ACLogModule;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/android/util/ACLogModule;
    .locals 1

    .line 18
    const-class v0, Lcom/cisco/anyconnect/android/util/ACLogModule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/android/util/ACLogModule;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/android/util/ACLogModule;
    .locals 1

    .line 18
    sget-object v0, Lcom/cisco/anyconnect/android/util/ACLogModule;->$VALUES:[Lcom/cisco/anyconnect/android/util/ACLogModule;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/android/util/ACLogModule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/android/util/ACLogModule;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/cisco/anyconnect/android/util/ACLogModule;->mStrModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/cisco/anyconnect/android/util/ACLogModule;->mLogSize:I

    return v0
.end method
