.class final enum Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;
.super Ljava/lang/Enum;
.source "VpnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

.field public static final enum Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

.field public static final enum String:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v1, "Boolean"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    .line 49
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v3, "String"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->String:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 46
    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;
    .locals 1

    .line 46
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;
    .locals 1

    .line 46
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    return-object v0
.end method
