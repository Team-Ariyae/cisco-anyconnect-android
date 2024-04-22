.class public interface abstract Lcom/cisco/android/nchs/codes/IOpcode;
.super Ljava/lang/Object;
.source "IOpcode.java"


# virtual methods
.method public abstract getCode()B
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract shouldDisconnect()Z
.end method

.method public abstract validateArguments(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/android/nchs/ipc/ArgumentMapping;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract validateCode()Z
.end method
