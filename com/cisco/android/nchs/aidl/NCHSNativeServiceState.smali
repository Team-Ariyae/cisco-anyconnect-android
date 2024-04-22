.class public final enum Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
.super Ljava/lang/Enum;
.source "NCHSNativeServiceState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

.field public static final enum STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

.field public static final enum STARTING:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

.field public static final enum STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STOPPED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    .line 19
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    const-string v3, "STARTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTING:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    .line 20
    new-instance v3, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    const-string v5, "STARTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->STARTED:Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 16
    sput-object v5, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/aidl/NCHSNativeServiceState;

    return-object v0
.end method
