.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$6;
.super Ljava/lang/Object;
.source "LocalizationManagementActivity.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/helpers/IToolOnClickCB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->initializeToolList()Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 446
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$6;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->RestoreDefaultL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$monRequestOperation(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Landroid/content/Intent;)V

    return-void
.end method
