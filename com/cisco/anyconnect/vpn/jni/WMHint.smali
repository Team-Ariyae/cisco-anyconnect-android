.class public final enum Lcom/cisco/anyconnect/vpn/jni/WMHint;
.super Ljava/lang/Enum;
.source "WMHint.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/WMHint;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum CLOSECREDENTIALPOPUP:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum MINIMIZE:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum OPEN:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum QUIT:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum REFRESHHOSTNAMES:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum REFRESHPREFS:Lcom/cisco/anyconnect/vpn/jni/WMHint;

.field public static final enum SHOWCONNECTING:Lcom/cisco/anyconnect/vpn/jni/WMHint;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 13
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v1, "MINIMIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/WMHint;->MINIMIZE:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    .line 17
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/WMHint;->OPEN:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    .line 21
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v5, "QUIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/WMHint;->QUIT:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    .line 25
    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v7, "REFRESHHOSTNAMES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/WMHint;->REFRESHHOSTNAMES:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    .line 29
    new-instance v7, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v9, "REFRESHPREFS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/jni/WMHint;->REFRESHPREFS:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    .line 33
    new-instance v9, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v11, "SHOWCONNECTING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/jni/WMHint;->SHOWCONNECTING:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    .line 37
    new-instance v11, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const-string v13, "CLOSECREDENTIALPOPUP"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/jni/WMHint;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/jni/WMHint;->CLOSECREDENTIALPOPUP:Lcom/cisco/anyconnect/vpn/jni/WMHint;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/jni/WMHint;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/WMHint;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/WMHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/WMHint;
    .locals 1

    .line 8
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/WMHint;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/WMHint;
    .locals 1

    .line 8
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/WMHint;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/WMHint;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/WMHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/WMHint;

    return-object v0
.end method
