.class public Lcom/cisco/umbrella/UmbrellaStats;
.super Ljava/lang/Object;
.source "UmbrellaStats.java"


# instance fields
.field public agentState:Lcom/cisco/umbrella/ui/states/AgentState;

.field public androidId:Ljava/lang/String;

.field public dns4Encryption:Lcom/cisco/umbrella/ui/states/EncryptionState;

.field public dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public environment:Ljava/lang/String;

.field public ipv4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

.field public lastConnectedTime:Ljava/lang/String;

.field public logUploadEnabled:Lcom/cisco/umbrella/ui/states/LoggingState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Lcom/cisco/umbrella/ui/states/AgentState;->NO_ORGINFO:Lcom/cisco/umbrella/ui/states/AgentState;

    iput-object v0, p0, Lcom/cisco/umbrella/UmbrellaStats;->agentState:Lcom/cisco/umbrella/ui/states/AgentState;

    .line 66
    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    iput-object v0, p0, Lcom/cisco/umbrella/UmbrellaStats;->dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 67
    sget-object v0, Lcom/cisco/umbrella/ui/states/ProtectionState;->RESERVED:Lcom/cisco/umbrella/ui/states/ProtectionState;

    iput-object v0, p0, Lcom/cisco/umbrella/UmbrellaStats;->ipv4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    .line 68
    sget-object v0, Lcom/cisco/umbrella/ui/states/EncryptionState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/EncryptionState;

    iput-object v0, p0, Lcom/cisco/umbrella/UmbrellaStats;->dns4Encryption:Lcom/cisco/umbrella/ui/states/EncryptionState;

    .line 69
    sget-object v0, Lcom/cisco/umbrella/ui/states/LoggingState;->UNKNOWN:Lcom/cisco/umbrella/ui/states/LoggingState;

    iput-object v0, p0, Lcom/cisco/umbrella/UmbrellaStats;->logUploadEnabled:Lcom/cisco/umbrella/ui/states/LoggingState;

    return-void
.end method


# virtual methods
.method public getUIResourceValues()[I
    .locals 7

    .line 79
    sget-object v0, Lcom/cisco/umbrella/UmbrellaStats$1;->$SwitchMap$com$cisco$umbrella$ui$states$ProtectionState:[I

    iget-object v1, p0, Lcom/cisco/umbrella/UmbrellaStats;->dns4Protection:Lcom/cisco/umbrella/ui/states/ProtectionState;

    invoke-virtual {v1}, Lcom/cisco/umbrella/ui/states/ProtectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_protected:I

    .line 146
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_unprotected:I

    .line 147
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_dns_encryption_state_desc_off:I

    .line 148
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_critical_stop:I

    .line 149
    sget v4, Lcom/cisco/umbrella/R$color;->status_red_wash_3:I

    goto :goto_0

    .line 137
    :pswitch_0
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_protected:I

    .line 138
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_fail_open_close:I

    .line 139
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_protection_substate_desc_fail_open_close:I

    .line 140
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_critical_stop:I

    .line 141
    sget v4, Lcom/cisco/umbrella/R$color;->status_red_wash_3:I

    goto :goto_0

    .line 129
    :pswitch_1
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_protected:I

    .line 130
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_unprotected:I

    .line 131
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_domains_missing:I

    .line 132
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_warning:I

    .line 133
    sget v4, Lcom/cisco/umbrella/R$color;->status_yellow_wash_3:I

    goto :goto_0

    .line 121
    :pswitch_2
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_protected:I

    .line 122
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_behind_VA:I

    .line 123
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_open:I

    .line 124
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_good:I

    .line 125
    sget v4, Lcom/cisco/umbrella/R$color;->status_blue_wash_3:I

    goto :goto_0

    .line 113
    :pswitch_3
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_protected:I

    .line 114
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protected_network:I

    .line 115
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_protection_network_state:I

    .line 116
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_good:I

    .line 117
    sget v4, Lcom/cisco/umbrella/R$color;->status_blue_wash_3:I

    goto :goto_0

    .line 105
    :pswitch_4
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_protected:I

    .line 106
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_unprotected:I

    .line 107
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_not_registered:I

    .line 108
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_warning:I

    .line 109
    sget v4, Lcom/cisco/umbrella/R$color;->status_yellow_wash_3:I

    goto :goto_0

    .line 97
    :pswitch_5
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_protected:I

    .line 98
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_unprotected:I

    .line 99
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_open:I

    .line 100
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_warning:I

    .line 101
    sget v4, Lcom/cisco/umbrella/R$color;->status_yellow_wash_3:I

    goto :goto_0

    .line 89
    :pswitch_6
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_protected:I

    .line 90
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_protected:I

    .line 91
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_dns_encryption_state_desc_on:I

    .line 92
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_good:I

    .line 93
    sget v4, Lcom/cisco/umbrella/R$color;->status_blue_wash_3:I

    goto :goto_0

    .line 81
    :pswitch_7
    sget v0, Lcom/cisco/umbrella/R$string;->umbrella_not_protected:I

    .line 82
    sget v1, Lcom/cisco/umbrella/R$string;->umbrella_protection_state_desc_reserved:I

    .line 83
    sget v2, Lcom/cisco/umbrella/R$string;->umbrella_status_please_wait:I

    .line 84
    sget v3, Lcom/cisco/umbrella/R$drawable;->ic_progress:I

    .line 85
    sget v4, Lcom/cisco/umbrella/R$color;->dark_cool_grey_3:I

    :goto_0
    const/4 v5, 0x5

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    const/4 v0, 0x4

    aput v4, v5, v0

    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
