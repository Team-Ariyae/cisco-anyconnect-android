.class Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$2;
.super Ljava/lang/Object;
.source "BaseToolsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;->-$$Nest$fgetmAdapter(Lcom/cisco/anyconnect/vpn/android/ui/helpers/BaseToolsActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;

    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "no tool found for position: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BaseToolsActivity"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ToolsAdapter$Tool;->getOnClickCB()Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;

    move-result-object p1

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;->onClick()V

    :cond_1
    return-void
.end method
