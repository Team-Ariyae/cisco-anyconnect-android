.class public final enum Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;
.super Ljava/lang/Enum;
.source "KnoxPrerequisites.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/permissions/KnoxPrerequisites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnoxExecutionContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

.field public static final enum CONTAINER_ONLY:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

.field public static final enum HOST:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

.field public static final enum MULTI_INSTANCE_CONTAINER:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    const-string v1, "HOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->HOST:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    .line 31
    new-instance v1, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    const-string v3, "MULTI_INSTANCE_CONTAINER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->MULTI_INSTANCE_CONTAINER:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    .line 37
    new-instance v3, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    const-string v5, "CONTAINER_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->CONTAINER_ONLY:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 21
    sput-object v5, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->$VALUES:[Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;
    .locals 1

    .line 21
    const-class v0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;
    .locals 1

    .line 21
    sget-object v0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->$VALUES:[Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    return-object v0
.end method
