.class Lcom/cisco/anyconnect/vpn/android/service/VpnService$8;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/service/VpnService;->applyRestrictions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/service/VpnService;)V
    .locals 0

    .line 1714
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$8;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1717
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/service/VpnService$8;->this$0:Lcom/cisco/anyconnect/vpn/android/service/VpnService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cisco/anyconnect/vpn/android/service/VpnService;->-$$Nest$fputmKeyChainImporter(Lcom/cisco/anyconnect/vpn/android/service/VpnService;Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;)V

    return-void
.end method
