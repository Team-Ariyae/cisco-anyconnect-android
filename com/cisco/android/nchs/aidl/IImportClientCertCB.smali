.class public interface abstract Lcom/cisco/android/nchs/aidl/IImportClientCertCB;
.super Ljava/lang/Object;
.source "IImportClientCertCB.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Stub;,
        Lcom/cisco/android/nchs/aidl/IImportClientCertCB$Default;
    }
.end annotation


# virtual methods
.method public abstract OnImportCompleted(Lcom/cisco/android/nchs/aidl/NCHSReturnCodeParcel;[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
