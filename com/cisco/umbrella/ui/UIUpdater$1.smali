.class Lcom/cisco/umbrella/ui/UIUpdater$1;
.super Ljava/lang/Object;
.source "UIUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/umbrella/ui/UIUpdater;-><init>(Lcom/cisco/umbrella/network/IPublicNetworkMonitor;Lcom/cisco/umbrella/UmbrellaStatsQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/umbrella/ui/UIUpdater;


# direct methods
.method constructor <init>(Lcom/cisco/umbrella/ui/UIUpdater;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/cisco/umbrella/ui/UIUpdater$1;->this$0:Lcom/cisco/umbrella/ui/UIUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/cisco/umbrella/ui/UIUpdater;->access$000()V

    return-void
.end method
