.class public final enum Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
.super Ljava/lang/Enum;
.source "NativeComponentInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum ASYNC_COMPLETION:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum DEVICE_INFO_NOT_AVAILABLE:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum DEVICE_NOT_SUPPORTED:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum ERROR_TIMED_OUT:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

.field public static final enum SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 56
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    .line 57
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v3, "ASYNC_COMPLETION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ASYNC_COMPLETION:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    .line 58
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v5, "DEVICE_NOT_SUPPORTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_NOT_SUPPORTED:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    .line 59
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v7, "DEVICE_INFO_NOT_AVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->DEVICE_INFO_NOT_AVAILABLE:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    .line 60
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    .line 61
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v11, "ERROR_ACCESS_DATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_ACCESS_DATA:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    .line 62
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const-string v13, "ERROR_TIMED_OUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->ERROR_TIMED_OUT:Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 54
    sput-object v13, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    .locals 1

    .line 54
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;
    .locals 1

    .line 54
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/helpers/NativeComponentInstaller$ReturnCode;

    return-object v0
.end method
