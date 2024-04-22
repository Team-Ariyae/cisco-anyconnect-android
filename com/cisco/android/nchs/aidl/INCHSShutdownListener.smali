.class public interface abstract Lcom/cisco/android/nchs/aidl/INCHSShutdownListener;
.super Ljava/lang/Object;
.source "INCHSShutdownListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Stub;,
        Lcom/cisco/android/nchs/aidl/INCHSShutdownListener$Default;
    }
.end annotation


# virtual methods
.method public abstract NCHSShutdownCB(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
