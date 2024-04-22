.class public final enum Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;
.super Ljava/lang/Enum;
.source "Prerequisites.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/permissions/Prerequisites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permissions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

.field public static final enum HAVE_AVF_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

.field public static final enum HAVE_PERMISSIONS_PATCH:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

.field public static final enum HAVE_PERMISSIONS_UNIVERSAL:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

.field public static final enum HAVE_ROOT_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

.field public static final enum NO_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

.field public static final enum UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;


# instance fields
.field mCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 114
    new-instance v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const-string v1, "HAVE_PERMISSIONS_PATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_PERMISSIONS_PATCH:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 120
    new-instance v1, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const-string v3, "HAVE_PERMISSIONS_UNIVERSAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_PERMISSIONS_UNIVERSAL:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 125
    new-instance v3, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const-string v5, "HAVE_ROOT_PRIVS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_ROOT_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 131
    new-instance v5, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const-string v7, "HAVE_AVF_PRIVS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->HAVE_AVF_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 136
    new-instance v7, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const-string v9, "NO_PRIVS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->NO_PRIVS:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    .line 141
    new-instance v9, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const-string v11, "UNKNOWN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->UNKNOWN:Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 108
    sput-object v11, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->$VALUES:[Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    .line 147
    iput-byte p1, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->mCode:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;
    .locals 1

    .line 108
    const-class v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;
    .locals 1

    .line 108
    sget-object v0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->$VALUES:[Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;

    return-object v0
.end method


# virtual methods
.method public getCode()B
    .locals 1

    .line 152
    iget-byte v0, p0, Lcom/cisco/android/nchs/permissions/Prerequisites$Permissions;->mCode:B

    return v0
.end method
