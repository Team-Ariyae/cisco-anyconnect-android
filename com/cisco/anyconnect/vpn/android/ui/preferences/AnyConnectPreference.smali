.class public abstract Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
.super Landroid/widget/LinearLayout;
.source "AnyConnectPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE_KEY:Ljava/lang/String; = "defaultValue"

.field private static final ENTITY_NAME:Ljava/lang/String; = "AnyConnectPreference"

.field private static final KEY_KEY:Ljava/lang/String; = "key"

.field private static final SUMMARY_KEY:Ljava/lang/String; = "summary"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final UNSET_RES_ID:I


# instance fields
.field private mClickListener:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mDefSummaryTextResId:I

.field private mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setClickable(Z)V

    const-string v1, "layout_inflater"

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0024

    .line 94
    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0a0244

    .line 97
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mTitleTextView:Landroid/widget/TextView;

    const p1, 0x7f0a0243

    .line 98
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummaryTextView:Landroid/widget/TextView;

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 99
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 101
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 105
    :cond_0
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "summary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    :cond_3
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 129
    :cond_4
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "defaultValue"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 131
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mDefaultValue:Ljava/lang/String;

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_6
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    .line 138
    iput v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mDefSummaryTextResId:I

    .line 140
    invoke-virtual {p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isEmptyString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public GetKey()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public GetSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public GetTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final SetAnyConnectPersistenceManager(Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    return-void
.end method

.method public SetAnyConnectPreferenceOnClickListener(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mClickListener:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;

    return-void
.end method

.method public SetSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 188
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummary:Ljava/lang/CharSequence;

    .line 189
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public SetTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 182
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mTitle:Ljava/lang/CharSequence;

    .line 183
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public abstract UpdateFromPersistenceManager()V
.end method

.method public UpdateSummary()V
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "AnyConnectPreference"

    const-string v2, "UpdateSummary: no persistence manager!"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 250
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->onBindValue(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_1
    iget v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mDefSummaryTextResId:I

    if-eqz v1, :cond_2

    .line 256
    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetSummary(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->SetSummary(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method protected getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBooleanProperty: no persistence manager for key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AnyConnectPreference"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p2

    .line 378
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->GetBooleanProperty(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected getBytesProperty(Ljava/lang/String;[B)[B
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    if-nez v0, :cond_0

    .line 385
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getBytesProperty: no persistence manager for key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AnyConnectPreference"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 389
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->GetBytesProperty(Ljava/lang/String;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultValue()Ljava/lang/String;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistenceType()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;
    .locals 1

    .line 177
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->LOCAL:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    return-object v0
.end method

.method protected getPreferenceContext()Landroid/content/Context;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getStringProperty: no persistence manager for key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AnyConnectPreference"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 367
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->GetStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .line 230
    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mWidgetLayoutResId:I

    return v0
.end method

.method protected onBindValue(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 273
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mClickListener:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;

    if-eqz p1, :cond_1

    .line 280
    invoke-interface {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;->onAnyConnectPreferenceClick(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;)V

    :cond_1
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->persistBooleanForKey(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected persistBooleanForKey(Ljava/lang/String;Z)Z
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    const-string v1, "AnyConnectPreference"

    if-nez v0, :cond_0

    .line 324
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "persistBooleanForKey: no persistence manager for key=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 328
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->SetBooleanProperty(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 331
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AnyConnectPreference: could not commit changes to key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method protected persistBytes([B)Z
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->persistBytesForKey(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method protected persistBytesForKey(Ljava/lang/String;[B)Z
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    const-string v1, "AnyConnectPreference"

    if-nez v0, :cond_0

    .line 346
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "persistBytesForKey: no peristence manager for key=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 350
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->SetBytesProperty(Ljava/lang/String;[B)Z

    move-result p1

    if-nez p1, :cond_1

    .line 353
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AnyConnectPreference: could not commit changes to key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p1
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->persistStringForKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected persistStringForKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mPersistMgr:Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;

    const-string v1, "AnyConnectPreference"

    if-nez v0, :cond_0

    .line 298
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "persistStringForKey: no persistence manager for key=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 302
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/IPersistenceManager;->SetStringProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->UpdateSummary()V

    return p1

    .line 310
    :cond_1
    sget-object p2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not commit changes to : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 395
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 396
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 397
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final setSummaryMaxLines(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 2

    .line 152
    iput p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mWidgetLayoutResId:I

    .line 153
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->mWidgetLayoutResId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0245

    .line 154
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 155
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 156
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
