.class public Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;
.super Ljava/lang/Object;
.source "FileBundler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/io/FileBundler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextFile"
.end annotation


# instance fields
.field public final content:Ljava/lang/CharSequence;

.field public final fileName:Ljava/lang/CharSequence;

.field public final header:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 63
    iput-object p3, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->content:Ljava/lang/CharSequence;

    .line 64
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->fileName:Ljava/lang/CharSequence;

    .line 65
    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/io/FileBundler$TextFile;->header:Ljava/lang/CharSequence;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected null input"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
