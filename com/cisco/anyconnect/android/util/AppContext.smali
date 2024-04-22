.class public Lcom/cisco/anyconnect/android/util/AppContext;
.super Ljava/lang/Object;
.source "AppContext.java"


# static fields
.field private static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Landroid/content/Context;
    .locals 1

    .line 13
    sget-object v0, Lcom/cisco/anyconnect/android/util/AppContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static set(Landroid/content/Context;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/cisco/anyconnect/android/util/AppContext;->mContext:Landroid/content/Context;

    return-void
.end method
