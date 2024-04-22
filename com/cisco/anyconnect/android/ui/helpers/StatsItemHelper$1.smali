.class Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper$1;
.super Ljava/lang/Object;
.source "StatsItemHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper$1;->this$0:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    sget v0, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    sget v1, Lcom/cisco/anyconnect/android/ui/R$id;->stat_list_value_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper$1;->this$0:Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;

    invoke-static {v1}, Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;->access$000(Lcom/cisco/anyconnect/android/ui/helpers/StatsItemHelper;)Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/cisco/anyconnect/android/ui/Globals;->PopupInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
