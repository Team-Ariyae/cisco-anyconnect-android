.class public final enum Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;
.super Ljava/lang/Enum;
.source "NetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field public static final enum CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field public static final enum CONFIGURING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field public static final enum DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field public static final enum INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

.field public static final enum INITIALIZING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 56
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->DISABLED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 57
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 58
    new-instance v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->INITIALIZED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 59
    new-instance v5, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const-string v7, "CONFIGURING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURING:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    .line 60
    new-instance v7, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const-string v9, "CONFIGURED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->CONFIGURED:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 55
    sput-object v9, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;
    .locals 1

    .line 55
    const-class v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;
    .locals 1

    .line 55
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$State;

    return-object v0
.end method
