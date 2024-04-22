.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;
.super Ljava/lang/Object;
.source "PopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$AlertPopup;,
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;,
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;
    }
.end annotation


# instance fields
.field private mCurrentPopup:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

.field private mListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;

.field private final mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mfinishCurrentPopup(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->finishCurrentPopup(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;)V

    return-void
.end method

.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;)V
    .locals 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mQueue:Ljava/util/List;

    if-nez p1, :cond_0

    const-string/jumbo p1, "unexpected null listener"

    .line 251
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 255
    :cond_0
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;

    return-void
.end method

.method private finishCurrentPopup(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mCurrentPopup:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

    if-eq p1, v0, :cond_0

    const-string p1, "finished popup is not the current popup"

    .line 235
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mCurrentPopup:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

    .line 240
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;

    invoke-interface {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$IPopupListener;->onPopupFinished()V

    return-void
.end method


# virtual methods
.method public addPopup(Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo p1, "unexpected null popup"

    .line 266
    invoke-static {p0, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;->getId()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mCurrentPopup:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasPopupToShow()Z
    .locals 1

    .line 294
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mCurrentPopup:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showNextPopup()V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->hasPopupToShow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "showNextPopup invoked without any popups"

    .line 305
    invoke-static {p0, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->error(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mQueue:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager;->mCurrentPopup:Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;

    .line 310
    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/PopupManager$Popup;->show()V

    return-void
.end method
