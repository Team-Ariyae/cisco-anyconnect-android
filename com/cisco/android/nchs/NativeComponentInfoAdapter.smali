.class public Lcom/cisco/android/nchs/NativeComponentInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "NativeComponentInfoAdapter.java"


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "NativeComponentInfoAdapter"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInfo:[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;


# direct methods
.method public constructor <init>([Lcom/cisco/android/nchs/aidl/NativeComponentInfo;Landroid/view/LayoutInflater;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->mInfo:[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    .line 41
    iput-object p2, p0, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "info and inflater cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->mInfo:[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->mInfo:[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 61
    iget-object p3, p0, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->mInfo:[Lcom/cisco/android/nchs/aidl/NativeComponentInfo;

    aget-object p1, p3, p1

    const-string p3, "NativeComponentInfoAdapter"

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/cisco/android/nchs/NativeComponentInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d009e

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    .line 68
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not inflate the component view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const v1, 0x7f0a00e2

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "could not find component name view in the component view"

    if-nez v1, :cond_1

    .line 77
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, p3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 80
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a00e3

    .line 84
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 87
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    invoke-static {p1, p3, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 90
    :cond_2
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x8

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a00e4

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_3

    .line 97
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not find component state view in the component view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    const v2, 0x7f0800be

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0a00e5

    .line 103
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_4

    .line 106
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string p2, "Could not find the component state description view in the component view"

    invoke-static {p1, p3, p2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 110
    :cond_4
    invoke-virtual {p1}, Lcom/cisco/android/nchs/aidl/NativeComponentInfo;->getStateString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
