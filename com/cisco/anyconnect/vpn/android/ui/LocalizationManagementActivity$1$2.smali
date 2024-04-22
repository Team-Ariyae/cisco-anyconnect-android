.class Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;
.super Ljava/lang/Object;
.source "LocalizationManagementActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;->ImportServerL10nDataCB(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;

    sget-object v1, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;->ImportServerL10n:Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;

    iget-boolean v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$1$2;->val$result:Z

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;->-$$Nest$monOperationFinished(Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/LocalizationManagementActivity$Operation;Z)V

    return-void
.end method
