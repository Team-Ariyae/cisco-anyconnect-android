.class Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;
.super Ljava/lang/Object;
.source "ConnectionSummaryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;->StatsCB(Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;

.field final synthetic val$stats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;->val$stats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity$1$1;->val$stats:Lcom/cisco/anyconnect/vpn/android/service/VPNStatsParcel;

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;->-$$Nest$mupdateStats(Lcom/cisco/anyconnect/vpn/android/ui/ConnectionSummaryActivity;Lcom/cisco/anyconnect/vpn/jni/VPNStats;)V

    return-void
.end method
