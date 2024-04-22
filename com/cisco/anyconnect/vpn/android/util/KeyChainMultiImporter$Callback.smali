.class public interface abstract Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter$Callback;
.super Ljava/lang/Object;
.source "KeyChainMultiImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/util/KeyChainMultiImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onImportResult(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation
.end method
