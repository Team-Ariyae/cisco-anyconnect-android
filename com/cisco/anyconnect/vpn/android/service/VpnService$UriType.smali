.class final enum Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;
.super Ljava/lang/Enum;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UriType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

.field public static final enum CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

.field public static final enum DISCONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 264
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->CONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    .line 265
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    const-string v3, "DISCONNECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->DISCONNECT:Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 262
    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;
    .locals 1

    .line 262
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;
    .locals 1

    .line 262
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnService$UriType;

    return-object v0
.end method
