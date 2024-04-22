.class public final enum Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;
.super Ljava/lang/Enum;
.source "ConnectPromptInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectPromptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum CERTIFICATE:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum LEGACY_SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum MANUAL_IMPORT_PKCS12:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum MDM_DEVICE_LIST:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum PROXY:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum SINGLELOGOUT:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum USER_AGREEMENT:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 31
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v1, "CERTIFICATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CERTIFICATE:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 32
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v3, "CREDENTIALS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 33
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v5, "PROXY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->PROXY:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 34
    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v7, "MANUAL_IMPORT_PKCS12"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->MANUAL_IMPORT_PKCS12:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 35
    new-instance v7, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v9, "STATUS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 37
    new-instance v9, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v11, "SINGLESIGNON"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 38
    new-instance v11, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v13, "SINGLELOGOUT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->SINGLELOGOUT:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 39
    new-instance v13, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v15, "LEGACY_SINGLESIGNON"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->LEGACY_SINGLESIGNON:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 45
    new-instance v15, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v14, "USER_AGREEMENT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->USER_AGREEMENT:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 46
    new-instance v14, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v12, "MDM_DEVICE_LIST"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->MDM_DEVICE_LIST:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 29
    sput-object v12, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;
    .locals 1

    .line 29
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;
    .locals 1

    .line 29
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    return-object v0
.end method
