.class public Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;
.super Ljava/lang/Object;
.source "JniHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/JniHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mapping"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->name:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/jni/JniHashMap$Mapping;->value:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mapping cannot have null names/values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
