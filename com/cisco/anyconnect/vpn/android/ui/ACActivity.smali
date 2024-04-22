.class public Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ACActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;
    }
.end annotation


# instance fields
.field public mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

.field protected mObserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/ui/util/IActivityObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mOptionMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mRedrawOptionsMenu:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mOptionMenuItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mRedrawOptionsMenu:Z

    return-void
.end method


# virtual methods
.method public OnTranslationTableChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mRedrawOptionsMenu:Z

    return-void
.end method

.method public getActivityChangeListener()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;
    .locals 1

    .line 201
    new-instance v0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-direct {v0, p0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public hasOptionsMenu()Z
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 193
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "ACActivity"

    const-string v1, "This activity does not have a label defined in the manifest: "

    .line 42
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->Initialize(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getActivityChangeListener()Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    move-result-object v2

    iput-object v2, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 54
    sget-object v3, Lcom/cisco/anyconnect/vpn/android/service/VpnActivityGlobals;->EXTRA_ACTIVITY_TITLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 67
    iget v4, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v4, :cond_2

    .line 69
    iget v1, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 73
    :cond_2
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_WARN:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugBuildDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 78
    sget-object v2, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_INFO:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v3, "exception thrown when attempting to get ComponentName"

    invoke-static {v2, v0, v3, v1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 84
    invoke-interface {v1, p1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onCreate(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->populateOptionsMenu(Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 160
    invoke-interface {v1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onDestroy()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->Destroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 126
    invoke-interface {v1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onPause()V

    goto :goto_0

    .line 129
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mRedrawOptionsMenu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mRedrawOptionsMenu:Z

    .line 313
    invoke-virtual {p0, p1}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->populateOptionsMenu(Landroid/view/Menu;)V

    .line 316
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRestart()V
    .locals 2

    .line 91
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    .line 93
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 95
    invoke-interface {v1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onRestart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 113
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 117
    invoke-interface {v1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 102
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 104
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 106
    invoke-interface {v1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/ui/util/IActivityObserver;

    .line 137
    invoke-interface {v1}, Lcom/cisco/anyconnect/ui/util/IActivityObserver;->onStop()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 147
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mChangeListener:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;

    invoke-virtual {p1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ActivityChangeListener;->ApplyChanges()V

    :cond_0
    return-void
.end method

.method public populateOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    .line 258
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 260
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mOptionMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    .line 262
    iget v2, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->id:I

    iget v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->titleRes:I

    .line 265
    invoke-static {v3}, Lcom/cisco/anyconnect/vpn/android/localization/UITranslator;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 262
    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, -0x1

    .line 266
    iget v4, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->iconRes:I

    if-eq v3, v4, :cond_0

    .line 268
    iget v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->iconRes:I

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 270
    :cond_0
    iget-boolean v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mCheckable:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 272
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 273
    iget-boolean v3, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 275
    :cond_1
    iget-boolean v1, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mEnabled:Z

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public registerActivityObserver(Lcom/cisco/anyconnect/ui/util/IActivityObserver;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setMenuItemEnabled(IZ)V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mOptionMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;

    .line 295
    iget v2, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->id:I

    if-ne v2, p1, :cond_0

    .line 297
    iget-boolean p1, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mEnabled:Z

    if-eq p2, p1, :cond_1

    .line 299
    iput-boolean p2, v1, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;->mEnabled:Z

    .line 300
    invoke-virtual {p0}, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->supportInvalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method public setOptionsMenu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cisco/anyconnect/vpn/android/ui/ACActivity$ACOptionsMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 281
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mOptionMenuItems:Ljava/util/List;

    return-void
.end method

.method public unregisterActivityObserver(Lcom/cisco/anyconnect/ui/util/IActivityObserver;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/ACActivity;->mObserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
