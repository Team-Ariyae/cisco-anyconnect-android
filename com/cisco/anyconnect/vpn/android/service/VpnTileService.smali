.class public Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;
.super Landroid/service/quicksettings/TileService;
.source "VpnTileService.java"


# instance fields
.field private nsq:Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private updateTile()V
    .locals 8

    .line 100
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Cannot update Tile because it\'s null"

    .line 102
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->info(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_0
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v1, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getVPNState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v2

    .line 112
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getConnectProgressState()Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    move-result-object v1

    .line 115
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService$1;->$SwitchMap$com$cisco$anyconnect$vpn$jni$VPNState:[I

    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v4, 0x7f0800f9

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    .line 138
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800f4

    .line 139
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800f6

    .line 134
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v6, 0x1

    goto :goto_1

    .line 127
    :pswitch_1
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800f3

    .line 128
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v6, 0x2

    goto :goto_1

    .line 122
    :pswitch_2
    invoke-virtual {v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    :goto_0
    const/4 v6, 0x0

    .line 145
    :goto_1
    sget-object v7, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->NoAction:Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;

    if-eq v1, v7, :cond_1

    .line 146
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ConnectProgressState;->name()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {p0, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_2

    :cond_1
    move v5, v6

    .line 152
    :goto_2
    invoke-virtual {v0, v3}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 153
    invoke-virtual {v0, v5}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 154
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v1, v3, :cond_2

    .line 155
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 159
    :cond_2
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 64
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 67
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->nsq:Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getVPNState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v0

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const/high16 v2, 0x10000000

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    .line 74
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-class v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->nsq:Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;->getVPNState()Lcom/cisco/anyconnect/vpn/jni/VPNState;

    move-result-object v1

    sget-object v3, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    if-ne v1, v3, :cond_1

    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_CONNECT"

    goto :goto_0

    :cond_1
    const-string v1, "com.cisco.anyconnect.vpn.android.ACTION_DISCONNECT"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.cisco.anyconnect.vpn.android.EXTRA_IS_WIDGET"

    const/4 v3, 0x1

    .line 77
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStartListening()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 90
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->nsq:Lcom/cisco/anyconnect/vpn/android/state/NetworkStateQuery;

    .line 91
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->updateTile()V

    return-void
.end method

.method public onTileAdded()V
    .locals 0

    .line 45
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    .line 48
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/VpnTileService;->onStartListening()V

    return-void
.end method

.method public onTileRemoved()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    return-void
.end method
