.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$1;
.super Ljava/util/HashMap;
.source "VpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$1;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 171
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->CONNECT_FAILED:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const v0, 0x7f110138

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;->MDM_CONTROLLED_CONNECTION:Lcom/cisco/anyconnect/vpn/android/service/VpnServiceResult;

    const v0, 0x7f1101cb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
