.class public final enum Lcom/cisco/anyconnect/vpn/jni/WMHintReason;
.super Ljava/lang/Enum;
.source "WMHintReason.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/WMHintReason;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum CONNECT:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum DISCONNECT:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum PROXYREQUEST:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum REASONUNKNOWN:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum SECONDGUISTART:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum SERVICEFAILURE:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

.field public static final enum SERVICESTOPPED:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v1, "SECONDGUISTART"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->SECONDGUISTART:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    .line 15
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v3, "PROXYREQUEST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->PROXYREQUEST:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    .line 19
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v5, "SERVICEFAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->SERVICEFAILURE:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    .line 23
    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v7, "DISCONNECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->DISCONNECT:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    .line 27
    new-instance v7, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v9, "SERVICESTOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->SERVICESTOPPED:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    .line 31
    new-instance v9, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v11, "CONNECT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->CONNECT:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    .line 35
    new-instance v11, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const-string v13, "REASONUNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->REASONUNKNOWN:Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 6
    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/WMHintReason;
    .locals 1

    .line 6
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/WMHintReason;
    .locals 1

    .line 6
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/WMHintReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/WMHintReason;

    return-object v0
.end method
