.class synthetic Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$10;
.super Ljava/lang/Object;
.source "KnoxInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnConnection$FipsMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1284
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->values()[Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnConnection$FipsMode:[I

    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Default:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnConnection$FipsMode:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Enable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/apptunnel/KnoxInteractionService$10;->$SwitchMap$com$cisco$anyconnect$vpn$android$service$VpnConnection$FipsMode:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->Disable:Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/VpnConnection$FipsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
