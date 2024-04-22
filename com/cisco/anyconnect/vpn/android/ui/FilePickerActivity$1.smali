.class Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

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

    .line 221
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->-$$Nest$fgetmAdapter(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;)Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    if-nez p1, :cond_0

    .line 224
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "FilePickerActivity"

    const-string p3, "null file returned from FileListAdapter"

    invoke-static {p1, p2, p3}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(I)V

    return-void

    .line 230
    :cond_0
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    invoke-static {p2, p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->-$$Nest$misParentOfCurrentDirectory(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 232
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->-$$Nest$mgoUpDirectory(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;)V

    return-void

    .line 236
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 238
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->-$$Nest$mpopulateFiles(Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;Ljava/io/File;Z)Z

    return-void

    .line 242
    :cond_2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "PICKED_FILE"

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 245
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/FilePickerActivity;->finish()V

    return-void
.end method
