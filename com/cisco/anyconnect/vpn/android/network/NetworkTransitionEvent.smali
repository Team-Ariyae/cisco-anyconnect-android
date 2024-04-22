.class public final enum Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;
.super Ljava/lang/Enum;
.source "NetworkTransitionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

.field public static final enum BetterRoute:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

.field public static final enum LoseConnectivity:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

.field public static final enum ResumeConnectivity:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    const-string v1, "LoseConnectivity"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->LoseConnectivity:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    .line 5
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    const-string v3, "ResumeConnectivity"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->ResumeConnectivity:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    .line 6
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    const-string v5, "BetterRoute"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->BetterRoute:Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3
    sput-object v5, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;
    .locals 1

    .line 3
    const-class v0, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;
    .locals 1

    .line 3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/network/NetworkTransitionEvent;

    return-object v0
.end method
