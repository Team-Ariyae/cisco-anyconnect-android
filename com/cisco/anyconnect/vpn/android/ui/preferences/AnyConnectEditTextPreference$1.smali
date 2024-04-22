.class Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference$1;
.super Ljava/lang/Object;
.source "AnyConnectEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->onBindValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 144
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->GetSummary()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->-$$Nest$fgetmEditText(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    .line 149
    :goto_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference$1;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;

    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;->-$$Nest$fgetmEditText(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectEditTextPreference;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    return-void
.end method
