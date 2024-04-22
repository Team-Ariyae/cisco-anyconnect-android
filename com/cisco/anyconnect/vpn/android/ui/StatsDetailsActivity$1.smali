.class Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$1;
.super Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;
.source "StatsDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/service/IStatsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;

    invoke-virtual {v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/StatsDetailsActivity;->updateStats(Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    return-void
.end method
