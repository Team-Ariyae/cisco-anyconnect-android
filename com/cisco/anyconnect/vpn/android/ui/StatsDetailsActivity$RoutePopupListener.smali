.class Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;
.super Ljava/lang/Object;
.source "StatsDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePopupListener"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a026e

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "StatsDetailsActivity"

    const-string v1, "failed to find the route text"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$RoutePopupListener;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
