.class final enum Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;
.super Ljava/lang/Enum;
.source "NetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitSubstate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

.field public static final enum NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

.field public static final enum WAIT_BIND_AGENT:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

.field public static final enum WAIT_BIND_AVF:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

.field public static final enum WAIT_BIND_NCHS:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 435
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    const-string v1, "NA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    .line 436
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    const-string v3, "WAIT_BIND_NCHS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_NCHS:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    .line 437
    new-instance v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    const-string v5, "WAIT_BIND_AGENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_AGENT:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    .line 438
    new-instance v5, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    const-string v7, "WAIT_BIND_AVF"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->WAIT_BIND_AVF:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 434
    sput-object v7, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;
    .locals 1

    .line 434
    const-class v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;
    .locals 1

    .line 434
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$InitSubstate;

    return-object v0
.end method
