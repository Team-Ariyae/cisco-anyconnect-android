.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "CertificateManagementRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;,
        Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
        "Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "CertMgmtList"


# instance fields
.field private mCertValidColor:I

.field private mHasDeletableCerts:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field public mMenu:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCertValidColor(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)I
    .locals 0

    iget p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mCertValidColor:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmInflater(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)Landroid/view/LayoutInflater;
    .locals 0

    iget-object p0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCertValidColor(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;I)V
    .locals 0

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mCertValidColor:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCertificateTypeString(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getCertificateTypeString(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$CertDiffCallBack-IA;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mCertValidColor:I

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mHasDeletableCerts:Z

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getCertificateTypeString(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)Ljava/lang/String;
    .locals 4

    .line 133
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetCertType()I

    move-result v0

    if-eqz v0, :cond_4

    const v1, 0x7f110209

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 162
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f11008c

    .line 159
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetCertProperty()I

    move-result v0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    .line 154
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected property for system trusted cert: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->GetCertProperty()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "CertMgmtList"

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const p1, 0x7f11008b

    .line 152
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const p1, 0x7f11008a

    .line 150
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isKeyChainCert()Z

    move-result v0

    if-eqz v0, :cond_5

    const p1, 0x7f110087

    .line 136
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_5
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isCiscoDeviceCert()Z

    move-result v0

    if-eqz v0, :cond_6

    const p1, 0x7f110086

    .line 138
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 139
    :cond_6
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isKnoxTimaCert()Z

    move-result v0

    if-eqz v0, :cond_7

    const p1, 0x7f110088

    .line 140
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 141
    :cond_7
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isAndroidKeystoreCert()Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f110089

    .line 142
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const p1, 0x7f110085

    .line 144
    invoke-static {p1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$sortList$0(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)I
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->getSubjectShortName()Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->getSubjectShortName()Ljava/lang/String;

    move-result-object p1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 190
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private sortList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;)V"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$$ExternalSyntheticLambda0;-><init>()V

    .line 193
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object p1

    return-object p1
.end method

.method public hasDeletableCerts()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mHasDeletableCerts:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->onBindViewHolder(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;I)V
    .locals 0

    .line 93
    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->getItem(I)Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;->bindTo(Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;
    .locals 2

    .line 72
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0031

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    iget-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;

    .line 76
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity;Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;)V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mMenu:Lcom/cisco/anyconnect/vpn/android/ui/CertificateManagementActivity$CertificateContextMenu;

    .line 78
    new-instance p2, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter$ViewHolder;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public submitList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;

    .line 105
    invoke-virtual {v1}, Lcom/cisco/anyconnect/vpn/android/service/ManagedCertificate;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->mHasDeletableCerts:Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/CertificateManagementRecyclerAdapter;->sortList(Ljava/util/List;)V

    .line 112
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
