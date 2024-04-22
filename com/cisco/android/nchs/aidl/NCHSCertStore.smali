.class public final enum Lcom/cisco/android/nchs/aidl/NCHSCertStore;
.super Ljava/lang/Enum;
.source "NCHSCertStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/aidl/NCHSCertStore;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/aidl/NCHSCertStore;

.field public static final enum ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

.field public static final enum ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

.field public static final enum SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 18
    new-instance v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const-string v1, "ANYCONNECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ANYCONNECT:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    .line 19
    new-instance v1, Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const-string v3, "SYSTEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->SYSTEM:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    .line 20
    new-instance v3, Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const-string v5, "ALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/android/nchs/aidl/NCHSCertStore;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->ALL:Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 16
    sput-object v5, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSCertStore;

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

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/aidl/NCHSCertStore;
    .locals 1

    .line 16
    const-class v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/aidl/NCHSCertStore;
    .locals 1

    .line 16
    sget-object v0, Lcom/cisco/android/nchs/aidl/NCHSCertStore;->$VALUES:[Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/aidl/NCHSCertStore;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/aidl/NCHSCertStore;

    return-object v0
.end method
