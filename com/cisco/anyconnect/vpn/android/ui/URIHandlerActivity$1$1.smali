.class Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;
.super Ljava/lang/Object;
.source "URIHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->ImportServerL10nDataCB(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;Z)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmIsLocalizationImportRequested(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fputmIsLocalizationImportRequested(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;Z)V

    .line 171
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$fgetmSpinner(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 172
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->this$1:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;

    iget-object v0, v0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity$1$1;->val$result:Z

    if-eqz v1, :cond_0

    const v2, 0x7f1102d9

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v2, 0x7f1102d6

    .line 173
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;->-$$Nest$mexitActivity(Lcom/cisco/anyconnect/vpn/android/ui/URIHandlerActivity;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
