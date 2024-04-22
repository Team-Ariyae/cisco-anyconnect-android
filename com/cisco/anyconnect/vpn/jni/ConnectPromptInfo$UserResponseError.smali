.class public final enum Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;
.super Ljava/lang/Enum;
.source "ConnectPromptInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserResponseError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum BadServerCert:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum None:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum SsoClientCertRequest:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum SsoGettingCookie:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum SsoMissingDependency:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum SsoNavigation:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum SsoTimeout:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

.field public static final enum Unspecified:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->None:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 16
    new-instance v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v3, "Unspecified"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->Unspecified:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 17
    new-instance v3, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v5, "BadServerCert"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->BadServerCert:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 18
    new-instance v5, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v7, "SsoNavigation"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoNavigation:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 19
    new-instance v7, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v9, "SsoGettingCookie"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoGettingCookie:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 20
    new-instance v9, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v11, "SsoTimeout"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoTimeout:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 21
    new-instance v11, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v13, "SsoMissingDependency"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoMissingDependency:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    .line 22
    new-instance v13, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const-string v15, "SsoClientCertRequest"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->SsoClientCertRequest:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 13
    sput-object v15, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;
    .locals 1

    .line 13
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;
    .locals 1

    .line 13
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$UserResponseError;

    return-object v0
.end method
