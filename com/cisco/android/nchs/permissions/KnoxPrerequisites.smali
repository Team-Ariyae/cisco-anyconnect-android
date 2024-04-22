.class public Lcom/cisco/android/nchs/permissions/KnoxPrerequisites;
.super Ljava/lang/Object;
.source "KnoxPrerequisites.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "KnoxPrerequisites.java"

.field private static final MIN_PERSONA_ID:I = 0x64


# instance fields
.field private final mAndroidUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites;->mAndroidUserId:I

    return-void
.end method

.method private isContainerOnlyMode(Lcom/cisco/anyconnect/vpn/android/system/ISystemProperties;)Z
    .locals 2

    const-string v0, "sys.knox.exists"

    .line 68
    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/system/ISystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, ":"

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 74
    aget-object p1, p1, v0

    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getExecutionContext(Lcom/cisco/anyconnect/vpn/android/system/ISystemProperties;)Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;
    .locals 2

    .line 52
    iget v0, p0, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites;->mAndroidUserId:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites;->isContainerOnlyMode(Lcom/cisco/anyconnect/vpn/android/system/ISystemProperties;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    sget-object p1, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->CONTAINER_ONLY:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    return-object p1

    .line 57
    :cond_0
    sget-object p1, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->MULTI_INSTANCE_CONTAINER:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    return-object p1

    .line 61
    :cond_1
    sget-object p1, Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;->HOST:Lcom/cisco/android/nchs/permissions/KnoxPrerequisites$KnoxExecutionContext;

    return-object p1
.end method
