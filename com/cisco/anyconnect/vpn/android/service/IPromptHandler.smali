.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler;
.super Ljava/lang/Object;
.source "IPromptHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Stub;,
        Lcom/cisco/anyconnect/vpn/android/service/IPromptHandler$Default;
    }
.end annotation


# virtual methods
.method public abstract BannerCB(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract CancelUserPromptCB()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract CertBannerCB(Ljava/lang/String;[B[Ljava/lang/String;Z[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract GetStartIntent()Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract UserPromptCB(Lcom/cisco/anyconnect/vpn/android/service/ConnectPromptInfoParcel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
