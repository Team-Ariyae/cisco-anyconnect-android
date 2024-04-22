.class Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2$1;
.super Ljava/lang/Object;
.source "ProfileManagementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$mimportURIpopup(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;

    iget-object p1, p1, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;->-$$Nest$mstartFilePickerImport(Lcom/cisco/anyconnect/vpn/android/ui/ProfileManagementActivity;)V

    :goto_0
    return-void
.end method
