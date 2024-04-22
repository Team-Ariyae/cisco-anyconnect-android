.class Lcom/cisco/android/nchs/ComponentStatusActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ComponentStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/android/nchs/ComponentStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;


# direct methods
.method constructor <init>(Lcom/cisco/android/nchs/ComponentStatusActivity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$1;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NCHS_COMPONENT_STATE_UPDATED_INTNET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$1;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-static {p1}, Lcom/cisco/android/nchs/ComponentStatusActivity;->-$$Nest$fgetmService(Lcom/cisco/android/nchs/ComponentStatusActivity;)Lcom/cisco/android/nchs/aidl/INetworkComponentHostService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/cisco/android/nchs/ComponentStatusActivity$1;->this$0:Lcom/cisco/android/nchs/ComponentStatusActivity;

    invoke-static {p1}, Lcom/cisco/android/nchs/ComponentStatusActivity;->-$$Nest$minitGUI(Lcom/cisco/android/nchs/ComponentStatusActivity;)V

    :cond_0
    return-void
.end method
