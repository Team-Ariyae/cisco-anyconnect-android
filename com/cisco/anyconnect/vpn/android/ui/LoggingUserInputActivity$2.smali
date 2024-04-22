.class Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$2;
.super Ljava/lang/Object;
.source "LoggingUserInputActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;


# direct methods
.method constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;

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

    .line 106
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->-$$Nest$fgetmReproduceET(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    const p3, 0x7f11020c

    invoke-static {p3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity$2;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;

    invoke-static {p2}, Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;->-$$Nest$fgetmReproduceET(Lcom/cisco/anyconnect/vpn/android/ui/LoggingUserInputActivity;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHelperTextEnabled(Z)V

    return-void
.end method
