.class public Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;
.super Ljava/lang/Object;
.source "ACActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACOptionsMenuItem"
.end annotation


# static fields
.field public static final NO_ICON:I = -0x1


# instance fields
.field final iconRes:I

.field final id:I

.field mCheckable:Z

.field mChecked:Z

.field mEnabled:Z

.field final titleRes:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->id:I

    .line 243
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->titleRes:I

    .line 244
    iput p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->iconRes:I

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mEnabled:Z

    const/4 p1, 0x0

    .line 246
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mCheckable:Z

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mCheckable:Z

    .line 252
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mChecked:Z

    return-void
.end method
