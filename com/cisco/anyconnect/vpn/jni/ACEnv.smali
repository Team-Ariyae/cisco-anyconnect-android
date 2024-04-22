.class public Lcom/cisco/anyconnect/vpn/jni/ACEnv;
.super Ljava/lang/Object;
.source "ACEnv.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "c++_shared"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "acjniutil"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SetEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/vpn/jni/ACEnv;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static SetEnv(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/jni/ACEnv;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
