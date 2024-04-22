.class Lcom/cisco/android/nchs/NetworkStateProvider$1;
.super Ljava/util/HashMap;
.source "NetworkStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/NetworkStateProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/NetworkStateProvider;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/NetworkStateProvider;)V
    .locals 4

    .line 131
    iput-object p1, p0, Lcom/cisco/android/nchs/NetworkStateProvider$1;->this$0:Lcom/cisco/android/nchs/NetworkStateProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 132
    new-instance p1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Boolean:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const/4 v1, 0x0

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "always_on"

    invoke-direct {p1, v0, v1, v3}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/cisco/android/nchs/NetworkStateProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance p1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->String:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const-string v3, "Unknown"

    invoke-direct {p1, v0, v3}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;)V

    const-string v0, "initiate_state"

    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NetworkStateProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance p1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->String:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;)V

    const-string/jumbo v0, "vpn_allowed_apps"

    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NetworkStateProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance p1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Integer:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-direct {p1, v0, v2}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;)V

    const-string v0, "always_on_retry_connect_count"

    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NetworkStateProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance p1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Long:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    invoke-direct {p1, v0, v2}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;)V

    const-string v0, "always_on_start_time"

    invoke-virtual {p0, v0, p1}, Lcom/cisco/android/nchs/NetworkStateProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance p1, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;

    sget-object v0, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;->Boolean:Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;

    const-string v2, "packet_capture_enabled"

    invoke-direct {p1, v0, v1, v2}, Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry;-><init>(Lcom/cisco/android/nchs/NetworkStateProvider$StateEntry$Type;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/cisco/android/nchs/NetworkStateProvider$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
