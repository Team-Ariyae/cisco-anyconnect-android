.class Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;
.super Ljava/lang/Object;
.source "AdvancedConnectionEditorActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSharedPreferenceChanged$0$com-cisco-anyconnect-vpn-android-ui-AdvancedConnectionEditorActivity$1()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->-$$Nest$fgetmIgnorePreferenceUpdate(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->-$$Nest$fputmIgnorePreferenceUpdate(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;Z)V

    .line 130
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->-$$Nest$menforceState(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-static {v1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->-$$Nest$fputmIgnorePreferenceUpdate(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    invoke-static {v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->-$$Nest$fputmIgnorePreferenceUpdate(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;Z)V

    .line 133
    throw v1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;

    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$1;)V

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
