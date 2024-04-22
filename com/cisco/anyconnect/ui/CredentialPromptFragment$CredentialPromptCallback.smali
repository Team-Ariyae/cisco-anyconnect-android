.class public interface abstract Lcom/cisco/anyconnect/ui/CredentialPromptFragment$CredentialPromptCallback;
.super Ljava/lang/Object;
.source "CredentialPromptFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/ui/CredentialPromptFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CredentialPromptCallback"
.end annotation


# virtual methods
.method public abstract OnCredentialCancel(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
.end method

.method public abstract OnCredentialCertRequested(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
.end method

.method public abstract OnCredentialNeutral(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
.end method

.method public abstract OnCredentialSubmit(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
.end method

.method public abstract OnGroupChange(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;Ljava/lang/String;)V
.end method
