.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;
.source "AnyConnectListPreference.java"


# static fields
.field private static final ENTRIES_KEY:Ljava/lang/String; = "entries"

.field private static final ENTRY_VALUES_KEY:Ljava/lang/String; = "entryValues"

.field public static final INVALID_INDEX:I = -0x1


# instance fields
.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryDescriptions:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fputmClickedDialogEntryIndex(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;I)V
    .locals 0

    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mClickedDialogEntryIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 57
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entries"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 65
    :cond_0
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "entryValues"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {p2, v0, p1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getValueIndex()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateSelection()V
    .locals 3

    .line 263
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 269
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setValueIndex(I)V

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    .line 274
    iput-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public UpdateFromPersistenceManager()V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->UpdateSummary()V

    .line 80
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->updateSelection()V

    return-void
.end method

.method public UpdateSummary()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->UpdateSummary()V

    .line 89
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryDescriptions:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getValueIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryDescriptions:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->SetSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public findIndexOfValue(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 243
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 247
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .locals 2

    .line 230
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 327
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->onDialogClosed(Z)V

    if-eqz p1, :cond_0

    .line 329
    iget p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mClickedDialogEntryIndex:I

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 331
    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 332
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V
    .locals 3

    .line 290
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectDialogPreference;->onPrepareDialogBuilder(Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;)V

    .line 292
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mClickedDialogEntryIndex:I

    .line 299
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference$1;

    invoke-direct {v2, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;)V

    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1, v0, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    return-void

    .line 294
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEntries(I)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-void
.end method

.method public setEntryDescriptions([Ljava/lang/CharSequence;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryDescriptions:[Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->UpdateSummary()V

    return-void
.end method

.method public setEntryValues(I)V
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 155
    invoke-direct {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->updateSelection()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mValue:Ljava/lang/String;

    .line 191
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->persistString(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setValueIndex(I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 205
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 207
    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectListPreference;->setValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
