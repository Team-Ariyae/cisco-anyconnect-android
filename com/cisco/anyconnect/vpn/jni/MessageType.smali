.class public final enum Lcom/cisco/anyconnect/vpn/jni/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/MessageType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Alert:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Info:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Status:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_UrlError:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Warn:Lcom/cisco/anyconnect/vpn/jni/MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v1, "MsgType_Error"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 15
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v3, "MsgType_Alert"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Alert:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 19
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v5, "MsgType_Warn"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Warn:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 23
    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v7, "MsgType_Info"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Info:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 27
    new-instance v7, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v9, "MsgType_Status"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Status:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 31
    new-instance v9, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v11, "MsgType_UrlError"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_UrlError:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/cisco/anyconnect/vpn/jni/MessageType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 6
    sput-object v11, Lcom/cisco/anyconnect/vpn/jni/MessageType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/MessageType;
    .locals 1

    .line 6
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/MessageType;
    .locals 1

    .line 6
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/MessageType;

    return-object v0
.end method
