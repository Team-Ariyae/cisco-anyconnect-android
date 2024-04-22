.class synthetic Lcom/cisco/android/nchs/support/SystemPrivProxy$2;
.super Ljava/lang/Object;
.source "SystemPrivProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/SystemPrivProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$android$nchs$support$SystemPrivProxy$PrivilegeProvider:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 96
    invoke-static {}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->values()[Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$2;->$SwitchMap$com$cisco$android$nchs$support$SystemPrivProxy$PrivilegeProvider:[I

    :try_start_0
    sget-object v1, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->CISCO_SYSTEM_SERVICE:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-virtual {v1}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
