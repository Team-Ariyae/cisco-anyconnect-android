.class final enum Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;
.super Ljava/lang/Enum;
.source "NetworkStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

.field public static final enum Boolean:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

.field public static final enum Integer:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

.field public static final enum Long:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

.field public static final enum String:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    new-instance v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const-string v1, "String"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->String:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    .line 53
    new-instance v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const-string v3, "Boolean"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Boolean:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    .line 54
    new-instance v3, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const-string v5, "Integer"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Integer:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    .line 55
    new-instance v5, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const-string v7, "Long"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Long:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 51
    sput-object v7, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->$VALUES:[Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;
    .locals 1

    .line 51
    const-class v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;
    .locals 1

    .line 51
    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->$VALUES:[Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    return-object v0
.end method
