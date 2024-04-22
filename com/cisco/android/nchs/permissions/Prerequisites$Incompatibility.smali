.class public final enum Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;
.super Ljava/lang/Enum;
.source "Prerequisites.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/permissions/Prerequisites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Incompatibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field public static final enum CONTAINER_NOT_SUPPORTED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field public static final enum HTC_PACKAGE_50_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field public static final enum HTC_PACKAGE_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field public static final enum NO_X86_SUPPORT:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field public static final enum SAMSUNG_LEGACY_PACKAGE_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

.field public static final enum UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;


# instance fields
.field private mMsgId:I

.field private mPrefKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 72
    new-instance v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const v3, 0x7f110183

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    .line 73
    new-instance v1, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const v3, 0x7f110180

    const-string v5, "htc_package_deprecated"

    const-string v6, "HTC_PACKAGE_DEPRECATED"

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7, v3, v5}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->HTC_PACKAGE_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    .line 74
    new-instance v3, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const v5, 0x7f110182

    const-string v6, "samsung_legacy_package_deprecated"

    const-string v8, "SAMSUNG_LEGACY_PACKAGE_DEPRECATED"

    const/4 v9, 0x2

    invoke-direct {v3, v8, v9, v5, v6}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->SAMSUNG_LEGACY_PACKAGE_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    .line 75
    new-instance v5, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const v6, 0x7f11017f

    const-string v8, "HTC_PACKAGE_50_DEPRECATED"

    const/4 v10, 0x3

    invoke-direct {v5, v8, v10, v6, v4}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->HTC_PACKAGE_50_DEPRECATED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    .line 76
    new-instance v6, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const v8, 0x7f1100e4

    const-string v11, "CONTAINER_NOT_SUPPORTED"

    const/4 v12, 0x4

    invoke-direct {v6, v11, v12, v8, v4}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->CONTAINER_NOT_SUPPORTED:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    .line 77
    new-instance v8, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const v11, 0x7f110181

    const-string v13, "NO_X86_SUPPORT"

    const/4 v14, 0x5

    invoke-direct {v8, v13, v14, v11, v4}, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->NO_X86_SUPPORT:Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    aput-object v0, v4, v2

    aput-object v1, v4, v7

    aput-object v3, v4, v9

    aput-object v5, v4, v10

    aput-object v6, v4, v12

    aput-object v8, v4, v14

    .line 70
    sput-object v4, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->$VALUES:[Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput p3, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->mMsgId:I

    .line 90
    iput-object p4, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->mPrefKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;
    .locals 1

    .line 70
    const-class v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;
    .locals 1

    .line 70
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->$VALUES:[Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;

    return-object v0
.end method


# virtual methods
.method public getMessage()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->mMsgId:I

    return v0
.end method

.method public getPrefKey()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public isFatal()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Incompatibility;->mPrefKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
