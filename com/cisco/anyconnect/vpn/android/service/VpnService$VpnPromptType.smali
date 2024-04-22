.class final enum Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;
.super Ljava/lang/Enum;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "VpnPromptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

.field public static final enum Banner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

.field public static final enum CertBanner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

.field public static final enum UserPrompt:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 209
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const-string v1, "Banner"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->Banner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    .line 210
    new-instance v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const-string v3, "CertBanner"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->CertBanner:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    .line 211
    new-instance v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const-string v5, "UserPrompt"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->UserPrompt:Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 207
    sput-object v5, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;
    .locals 1

    .line 207
    const-class v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    return-object p0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;
    .locals 1

    .line 207
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/android/service/VpnService$VpnPromptType;

    return-object v0
.end method
