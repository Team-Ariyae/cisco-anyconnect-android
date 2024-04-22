.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;
.super Ljava/lang/Object;
.source "ListTagHandler.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# instance fields
.field private mFirst:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;->mFirst:Z

    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 1

    const-string p1, "li"

    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-lez p1, :cond_0

    .line 32
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p1

    sub-int/2addr p1, p2

    invoke-interface {p3, p1}, Landroid/text/Editable;->charAt(I)C

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;->mFirst:Z

    if-eqz v0, :cond_2

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    const-string p1, "\t\u2022  "

    .line 36
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    :cond_1
    const-string p1, "\n\t\u2022  "

    .line 38
    invoke-interface {p3, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 39
    :goto_1
    iput-boolean p4, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;->mFirst:Z

    goto :goto_2

    .line 43
    :cond_2
    iput-boolean p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ListTagHandler;->mFirst:Z

    :cond_3
    :goto_2
    return-void
.end method
