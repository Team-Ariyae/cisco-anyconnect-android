.class public final Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;
.super Ljava/lang/Object;
.source "PermissionAuditer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audit"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;
    }
.end annotation


# instance fields
.field public final devTunExists:Z

.field public final groups:[I

.field public final hasCheckedForRoot:Z

.field public final hasPermissionCombined:Z

.field public final hasPermissionNetAdmin:Z

.field public final hasPermissionNetRaw:Z

.field public final hasPermissionTun:Z

.field public final inGroupNetAdmin:Z

.field public final inGroupNetRaw:Z

.field public final inGroupTun:Z

.field public final isRooted:Z

.field public final isTunModuleLoaded:Z

.field public final isTunReadable:Z

.field public final isTunWritable:Z

.field public final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)V
    .locals 1

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmIsRooted(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isRooted:Z

    .line 151
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmUserId(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->userId:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmGroups(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->groups:[I

    .line 153
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmInGroupNetRaw(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->inGroupNetRaw:Z

    .line 154
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmInGroupTun(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->inGroupTun:Z

    .line 155
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmInGroupNetAdmin(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->inGroupNetAdmin:Z

    .line 156
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmDevTunExists(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->devTunExists:Z

    .line 157
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmIsTunModuleLoaded(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isTunModuleLoaded:Z

    .line 159
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmIsTunReadable(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isTunReadable:Z

    .line 160
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmIsTunWritable(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isTunWritable:Z

    .line 161
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionNetRaw(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionNetRaw:Z

    .line 162
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionNetAdmin(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionNetAdmin:Z

    .line 163
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionTun(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionTun:Z

    .line 164
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasPermissionCombined(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionCombined:Z

    .line 165
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;->-$$Nest$fgetmHasCheckedForRoot(Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasCheckedForRoot:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasCheckedForRoot:Z

    if-eqz v1, :cond_0

    const-string v1, "rooted: "

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isRooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "\nuser id: "

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\ngroup subscriptions:\nnet_raw: "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->inGroupNetRaw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nnet_admin: "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->inGroupNetAdmin:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nvpn: "

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->inGroupTun:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nall: "

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->groups:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\ngranted permissions:\nnet_raw: "

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionNetRaw:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionNetAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ntun: "

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionTun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ncombined: "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->hasPermissionCombined:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n\nTUN Driver:\n/dev/tun exists: "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->devTunExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n/dev/tun readable: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isTunReadable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n/dev/tun writable: "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isTunWritable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\ntun.ko loaded: "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/permissions/PermissionAuditer$Audit;->isTunModuleLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
