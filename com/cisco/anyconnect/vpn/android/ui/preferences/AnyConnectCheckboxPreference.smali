.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;
.source "AnyConnectCheckboxPreference.java"

# interfaces
.implements Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "AnyConnectCheckboxPreference"


# instance fields
.field private final mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mDefault:Z


# direct methods
.method static bridge synthetic -$$Nest$mupdateFromUi(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->updateFromUi(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mChecked:Z

    .line 40
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mDefault:Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    .line 51
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mDefault:Z

    const p1, 0x7f0d0022

    .line 54
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setWidgetLayoutResource(I)V

    .line 56
    new-instance p1, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference$1;

    invoke-direct {p1, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference$1;-><init>(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;)V

    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const p2, 0x7f0a0064

    .line 64
    invoke-virtual {p0, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 65
    instance-of v0, p2, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 67
    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    .line 68
    invoke-virtual {p2, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    :cond_0
    invoke-virtual {p0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->SetAnyConnectPreferenceOnClickListener(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference$AnyConnectPreferenceOnClickListener;)V

    return-void
.end method

.method private updateFromUi(Z)V
    .locals 4

    .line 104
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mChecked:Z

    .line 105
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mChecked:Z

    .line 107
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->persistBoolean(Z)Z

    move-result v1

    const-string v2, "AnyConnectCheckboxPreference"

    if-nez v1, :cond_0

    .line 109
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateFromUi: could not commit changes to key="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mChecked:Z

    return-void

    .line 114
    :cond_0
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_TRACE:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateFromUi: updated "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->GetKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public UpdateFromPersistenceManager()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->GetKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mDefault:Z

    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->setValue(Z)V

    return-void
.end method

.method public UpdateSummary()V
    .locals 0

    return-void
.end method

.method public getValue()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mChecked:Z

    return v0
.end method

.method public onAnyConnectPreferenceClick(Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    .line 78
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v0, "AnyConnectCheckboxPreference"

    const-string v1, "no checkbox to update!"

    invoke-static {p1, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 147
    invoke-super {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreference;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method public setValue(Z)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    const-string v1, "AnyConnectCheckboxPreference"

    if-nez v0, :cond_0

    .line 127
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to get checkbox for : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iput-boolean p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mChecked:Z

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->mCheckChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->persistBoolean(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 139
    sget-object p1, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setValue: could not commit changes to key="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
