.class public interface abstract Lcom/cisco/anyconnect/vpn/android/service/ISettingListener;
.super Ljava/lang/Object;
.source "ISettingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Stub;,
        Lcom/cisco/anyconnect/vpn/android/service/ISettingListener$Default;
    }
.end annotation


# virtual methods
.method public abstract SettingChangedCB(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract SettingUserControllableChangedCB(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
