.class final enum Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;
.super Ljava/lang/Enum;
.source "NetworkInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ConfigSubstate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

.field public static final enum NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

.field public static final enum WAIT_APPLY_CONFIG:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

.field public static final enum WAIT_IPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 442
    new-instance v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    const-string v1, "NA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;->NA:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    .line 443
    new-instance v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    const-string v3, "WAIT_IPC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;->WAIT_IPC:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    .line 444
    new-instance v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    const-string v5, "WAIT_APPLY_CONFIG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;->WAIT_APPLY_CONFIG:Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 441
    sput-object v5, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 441
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;
    .locals 1

    .line 441
    const-class v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;
    .locals 1

    .line 441
    sget-object v0, Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;->$VALUES:[Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/interceptor/NetworkInterceptor$ConfigSubstate;

    return-object v0
.end method
