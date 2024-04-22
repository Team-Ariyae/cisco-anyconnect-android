.class public Lcom/cisco/anyconnect/nvm/utils/ACEnv;
.super Ljava/lang/Object;
.source "ACEnv.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
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

    .line 26
    invoke-static {p0, p1, v0}, Lcom/cisco/anyconnect/nvm/utils/ACEnv;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static SetEnv(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2}, Lcom/cisco/anyconnect/nvm/utils/ACEnv;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private static native nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
