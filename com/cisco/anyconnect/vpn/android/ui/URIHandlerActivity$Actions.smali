.class final enum Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;
.super Ljava/lang/Enum;
.source "URIHandlerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum CLOSE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum CONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum CREATE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum DISCONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum EXTERNALSSO:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum IMPORT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

.field public static final enum UMBRELLA:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 234
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    .line 235
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v3, "DISCONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->DISCONNECT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    .line 236
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v5, "CREATE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CREATE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    .line 237
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v7, "IMPORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->IMPORT:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    .line 238
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v9, "CLOSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->CLOSE:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    .line 239
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v11, "UMBRELLA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->UMBRELLA:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    .line 240
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const-string v13, "EXTERNALSSO"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->EXTERNALSSO:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 232
    sput-object v13, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static stringToEnum(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/16 v0, 0x2d

    const/16 v1, 0x5f

    .line 257
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->values()[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 260
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No action with name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " found."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;
    .locals 1

    .line 232
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;
    .locals 1

    .line 232
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$Actions;

    return-object v0
.end method
