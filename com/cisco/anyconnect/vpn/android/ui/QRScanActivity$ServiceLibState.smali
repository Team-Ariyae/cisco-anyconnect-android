.class final enum Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;
.super Ljava/lang/Enum;
.source "QRScanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ServiceLibState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

.field public static final enum LOW_STORAGE:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

.field public static final enum NOT_DOWNLOADEDED:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

.field public static final enum SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->SUCCESS:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    .line 60
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    const-string v3, "NOT_DOWNLOADEDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->NOT_DOWNLOADEDED:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    .line 61
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    const-string v5, "LOW_STORAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->LOW_STORAGE:Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 57
    sput-object v5, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;
    .locals 1

    .line 57
    const-class v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;
    .locals 1

    .line 57
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/ui/QRScanActivity$ServiceLibState;

    return-object v0
.end method
