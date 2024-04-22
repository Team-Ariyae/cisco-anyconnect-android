.class Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;
.super Ljava/lang/Object;
.source "AdvancedConnectionEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ACOptionsMenuItem"
.end annotation


# instance fields
.field final iconRes:I

.field final titleRes:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;->titleRes:I

    .line 375
    iput p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/AdvancedConnectionEditorActivity$ACOptionsMenuItem;->iconRes:I

    return-void
.end method
