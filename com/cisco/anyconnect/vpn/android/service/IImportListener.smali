.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/IImportListener;
.super Ljava/lang/Object;
.source "IImportListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Stub;,
        Lcom/cisco/anyconnect/vpn/android/service/IImportListener$Default;
    }
.end annotation


# virtual methods
.method public abstract ImportServerL10nDataCB(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract RestoreDefaultL10nDataCB(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
