.class public interface abstract Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService;
.super Ljava/lang/Object;
.source "IKnoxInteractionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Stub;,
        Lcom/cisco/anyconnect/vpn/android/apptunnel/IKnoxInteractionService$Default;
    }
.end annotation


# virtual methods
.method public abstract getActiveKnoxProfileName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getManagedMdmApps()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isKnoxMetaEnabledForActiveConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isMDMInitiatedConnect()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
