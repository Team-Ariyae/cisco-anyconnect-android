.class public abstract Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;
.super Ljava/lang/Object;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Popup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final finish()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;

    invoke-static {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->-$$Nest$mfinishCurrentPopup(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;)V

    return-void
.end method

.method protected abstract getId()Ljava/lang/Object;
.end method

.method protected abstract show()V
.end method
