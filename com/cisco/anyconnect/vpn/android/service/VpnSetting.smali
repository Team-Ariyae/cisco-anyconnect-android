.class public final enum Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;
.super Ljava/lang/Enum;
.source "VpnSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum AutomaticVpn:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum BlockLocation:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum BlockUntrustedServers:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum DebugMode:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum DisablePACProxy:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final ENTITY_NAME:Ljava/lang/String; = "VpnSetting"

.field public static final enum EulaAccepted:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum Fips:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum HideIcon:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum HideMdm:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum HideVpn:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum Ocsp:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum RemoteControl:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

.field public static final enum Strict_Mode:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mIsRemote:Z

.field private final mKey:Ljava/lang/String;

.field private final mValueType:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 31
    new-instance v7, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v1, "Fips"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Fips"

    sget-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v6, "false"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->Fips:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 32
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v9, "BlockUntrustedServers"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "BlockUntrustedServers"

    sget-object v13, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v14, "true"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->BlockUntrustedServers:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 33
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v16, "RemoteControl"

    const/16 v17, 0x2

    const/16 v18, 0x0

    const-string v19, "RemoteControl"

    sget-object v20, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->String:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v21, "Disabled"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->RemoteControl:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 34
    new-instance v2, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v9, "AutomaticVpn"

    const/4 v10, 0x3

    const-string v12, "AutomaticVpn"

    sget-object v13, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v14, "true"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v2, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->AutomaticVpn:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 35
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v16, "HideIcon"

    const/16 v17, 0x4

    const/16 v18, 0x1

    const-string v19, "HideIcon"

    sget-object v20, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v21, "true"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->HideIcon:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 36
    new-instance v4, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v9, "HideVpn"

    const/4 v10, 0x5

    const-string v12, "HideVpn"

    sget-object v13, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v14, "false"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v4, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->HideVpn:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 38
    new-instance v5, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v16, "HideMdm"

    const/16 v17, 0x6

    const/16 v18, 0x0

    const-string v19, "HideMdm"

    sget-object v20, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v21, "false"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->HideMdm:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 39
    new-instance v6, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v9, "BlockLocation"

    const/4 v10, 0x7

    const-string v12, "BlockLocation"

    sget-object v13, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v14, "false"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v6, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->BlockLocation:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 40
    new-instance v8, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v16, "EulaAccepted"

    const/16 v17, 0x8

    const-string v19, "eula"

    sget-object v20, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v21, "false"

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v8, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->EulaAccepted:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 41
    new-instance v16, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v10, "DisablePACProxy"

    const/16 v11, 0x9

    const/4 v12, 0x0

    const-string v13, "DisablePACProxy"

    sget-object v14, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v15, "false"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v16, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->DisablePACProxy:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 42
    new-instance v9, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v18, "Ocsp"

    const/16 v19, 0xa

    const/16 v20, 0x0

    const-string v21, "Ocsp"

    sget-object v22, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->String:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v23, "false"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->Ocsp:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 43
    new-instance v10, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v25, "Strict_Mode"

    const/16 v26, 0xb

    const/16 v27, 0x0

    const-string v28, "Strict_Mode"

    sget-object v29, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->String:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v30, "false"

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v10, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->Strict_Mode:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    .line 44
    new-instance v11, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const-string v18, "DebugMode"

    const/16 v19, 0xc

    const-string v21, "DebugMode"

    sget-object v22, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->String:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    const-string v23, "false"

    move-object/from16 v17, v11

    invoke-direct/range {v17 .. v23}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;-><init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->DebugMode:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const/16 v12, 0xd

    new-array v12, v12, [Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v7, 0x1

    aput-object v0, v12, v7

    const/4 v0, 0x2

    aput-object v1, v12, v0

    const/4 v0, 0x3

    aput-object v2, v12, v0

    const/4 v0, 0x4

    aput-object v3, v12, v0

    const/4 v0, 0x5

    aput-object v4, v12, v0

    const/4 v0, 0x6

    aput-object v5, v12, v0

    const/4 v0, 0x7

    aput-object v6, v12, v0

    const/16 v0, 0x8

    aput-object v8, v12, v0

    const/16 v0, 0x9

    aput-object v16, v12, v0

    const/16 v0, 0xa

    aput-object v9, v12, v0

    const/16 v0, 0xb

    aput-object v10, v12, v0

    const/16 v0, 0xc

    aput-object v11, v12, v0

    .line 23
    sput-object v12, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-boolean p3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mIsRemote:Z

    .line 62
    iput-object p4, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mKey:Ljava/lang/String;

    .line 63
    iput-object p5, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mValueType:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    .line 64
    iput-object p6, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mDefaultValue:Ljava/lang/String;

    return-void
.end method

.method static get(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;
    .locals 5

    .line 119
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->values()[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 121
    invoke-virtual {v3}, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;
    .locals 1

    .line 23
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;
    .locals 1

    .line 23
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    return-object v0
.end method


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method getValueType()Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mValueType:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    return-object v0
.end method

.method isRemote()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mIsRemote:Z

    return v0
.end method

.method validateStringValue(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 89
    :cond_0
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->RemoteControl:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;

    const/4 v2, 0x1

    if-ne v1, p0, :cond_3

    .line 91
    invoke-static {}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/RemoteControlMode;->getStringValues()[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 93
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0

    .line 101
    :cond_3
    sget-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;->Boolean:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mValueType:Lcom/cisco/anyconnect/vpn/android/service/VpnSetting$ValueType;

    if-ne v1, v3, :cond_6

    const-string v1, "true"

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v2

    .line 112
    :cond_6
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not validating setting: key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnSetting;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnSetting"

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
