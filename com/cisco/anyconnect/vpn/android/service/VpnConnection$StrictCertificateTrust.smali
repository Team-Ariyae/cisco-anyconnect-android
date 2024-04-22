.class public final enum Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;
.super Ljava/lang/Enum;
.source "VpnConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrictCertificateTrust"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

.field public static final enum Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

.field public static final enum Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

.field public static final enum Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 66
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    .line 71
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const-string v3, "Enable"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    .line 76
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const-string v5, "Disable"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 61
    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;
    .locals 1

    .line 61
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;
    .locals 1

    .line 61
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$StrictCertificateTrust;

    return-object v0
.end method
