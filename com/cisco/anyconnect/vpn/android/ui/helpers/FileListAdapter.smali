.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileListAdapter.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "FileListAdapter"


# instance fields
.field private mFiles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mHasParent:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mHasParent:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mFiles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getFiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mFiles:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mFiles:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 100
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0058

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string p3, "FileListAdapter"

    if-nez p2, :cond_0

    .line 103
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not inflate the file picker layout"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const v1, 0x7f0a0168

    .line 107
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 110
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not find the file_label_view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const v2, 0x7f0a0167

    .line 114
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-nez v2, :cond_2

    .line 117
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "could not find the file_image view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 121
    :cond_2
    iget-object p3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mFiles:Ljava/util/LinkedList;

    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/io/File;

    .line 122
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_4

    if-nez p1, :cond_3

    .line 126
    iget-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mHasParent:Z

    if-eqz p1, :cond_3

    const p1, 0x7f0800fa

    .line 128
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p1, ""

    .line 130
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const p1, 0x7f080096

    .line 134
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    return-object p2
.end method

.method public setFiles([Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter$1;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mFiles:Ljava/util/LinkedList;

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mHasParent:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/FileListAdapter;->mHasParent:Z

    :goto_0
    return-void
.end method
