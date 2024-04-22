.class synthetic Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;
.super Ljava/lang/Object;
.source "VpnTileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 115
    invoke-static {}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->values()[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    :try_start_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->AUTHENTICATING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->SSOPOLLING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
