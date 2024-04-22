.class public abstract Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;
.super Ljava/lang/Object;
.source "DnsSetter.java"


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/util/DnsSetter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract restoreDns(Ljava/lang/String;)Z
.end method

.method public abstract setDns(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
