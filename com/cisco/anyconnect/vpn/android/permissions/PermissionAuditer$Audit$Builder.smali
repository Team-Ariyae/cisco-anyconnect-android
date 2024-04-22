.class public final Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
.super Ljava/lang/Object;
.source "PermissionAuditer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDevTunExists:Z

.field private mGroups:[I

.field private mHasCheckedForRoot:Z

.field private mHasPermissionCombined:Z

.field private mHasPermissionNetAdmin:Z

.field private mHasPermissionNetRaw:Z

.field private mHasPermissionTun:Z

.field private mInGroupNetAdmin:Z

.field private mInGroupNetRaw:Z

.field private mInGroupTun:Z

.field private mIsRooted:Z

.field private mIsTunModuleLoaded:Z

.field private mIsTunReadable:Z

.field private mIsTunWritable:Z

.field private mUserId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevTunExists(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mDevTunExists:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroups(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)[I
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mGroups:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasCheckedForRoot(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasCheckedForRoot:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPermissionCombined(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionCombined:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPermissionNetAdmin(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionNetAdmin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPermissionNetRaw(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionNetRaw:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasPermissionTun(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionTun:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInGroupNetAdmin(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mInGroupNetAdmin:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInGroupNetRaw(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mInGroupNetRaw:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInGroupTun(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mInGroupTun:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRooted(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsRooted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTunModuleLoaded(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsTunModuleLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTunReadable(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsTunReadable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTunWritable(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsTunWritable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mUserId:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 223
    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mGroups:[I

    return-void
.end method


# virtual methods
.method public build()Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;
    .locals 1

    .line 318
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;-><init>(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)V

    return-object v0
.end method

.method public checkedForRoot(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 312
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasCheckedForRoot:Z

    return-object p0
.end method

.method public groups([I)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mGroups:[I

    return-object p0
.end method

.method public hasPermissionCombined(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 306
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionCombined:Z

    return-object p0
.end method

.method public hasPermissionNetAdmin(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionNetAdmin:Z

    return-object p0
.end method

.method public hasPermissionNetRaw(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionNetRaw:Z

    return-object p0
.end method

.method public hasPermissionTun(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 300
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mHasPermissionTun:Z

    return-object p0
.end method

.method public hasTun(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mDevTunExists:Z

    return-object p0
.end method

.method public inGroupNetAdmin(Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 252
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mInGroupNetAdmin:Z

    return-object p0
.end method

.method public inGroupNetRaw(Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 246
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mInGroupNetRaw:Z

    return-object p0
.end method

.method public inGroupVpn(Ljava/lang/Boolean;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 258
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mInGroupTun:Z

    return-object p0
.end method

.method public isRooted(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsRooted:Z

    return-object p0
.end method

.method public isTunModuleLoaded(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsTunModuleLoaded:Z

    return-object p0
.end method

.method public isTunReadable(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 276
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsTunReadable:Z

    return-object p0
.end method

.method public isTunWritable(Z)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 282
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mIsTunWritable:Z

    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->mUserId:Ljava/lang/String;

    return-object p0
.end method
