.class final enum Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;
.super Ljava/lang/Enum;
.source "SystemPrivProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/support/SystemPrivProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PrivilegeProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

.field public static final enum CISCO_SYSTEM_SERVICE:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

.field public static final enum NO_PROVIDER:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 50
    new-instance v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    const-string v1, "NO_PROVIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->NO_PROVIDER:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    new-instance v1, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    const-string v3, "CISCO_SYSTEM_SERVICE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->CISCO_SYSTEM_SERVICE:Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->$VALUES:[Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;
    .locals 1

    .line 50
    const-class v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    return-object p0
.end method

.method public static values()[Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;
    .locals 1

    .line 50
    sget-object v0, Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->$VALUES:[Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    invoke-virtual {v0}, [Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/android/nchs/support/SystemPrivProxy$PrivilegeProvider;

    return-object v0
.end method
