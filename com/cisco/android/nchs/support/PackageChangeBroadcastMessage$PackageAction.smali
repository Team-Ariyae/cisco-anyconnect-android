.class public final enum Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;
.super Ljava/lang/Enum;
.source "PackageChangeBroadcastMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PackageAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

.field public static final enum Add:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

.field public static final enum Remove:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

.field public static final enum Replace:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 16
    new-instance v0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    const-string v1, "Add"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->Add:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    .line 17
    new-instance v1, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    const-string v3, "Remove"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->Remove:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    .line 18
    new-instance v3, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    const-string v5, "Replace"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->Replace:Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 14
    sput-object v5, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->$VALUES:[Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->mCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;
    .locals 1

    .line 14
    const-class v0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;
    .locals 1

    .line 14
    sget-object v0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->$VALUES:[Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/cisco/android/nchs/support/PackageChangeBroadcastMessage$PackageAction;->mCode:I

    return v0
.end method
