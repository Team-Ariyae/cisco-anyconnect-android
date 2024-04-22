.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
.source "AnyConnectButtonPreference.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;->SetAnyConnectPreferenceOnClickListener(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;)V

    return-void
.end method


# virtual methods
.method public UpdateFromPersistenceManager()V
    .locals 0

    return-void
.end method

.method public onAnyConnectPreferenceClick(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;->mCallback:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;->onClickButtonPreference(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "no callback set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference;->mCallback:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectButtonPreference$IAnyConnectButtonPreferenceCB;

    return-void
.end method
