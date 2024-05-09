.class public Lcom/cisco/anyconnect/ui/Launcher;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Launcher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private reqPers()V
    .registers 6

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_25

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 59
    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/Launcher;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 62
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/cisco/anyconnect/ui/Launcher;->requestPermissions([Ljava/lang/String;I)V

    .line 65
    :cond_25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_33

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/Launcher;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_34

    .line 77
    :cond_33
    :goto_33
    return-void

    .line 68
    :cond_34
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Lcom/cisco/anyconnect/ui/Launcher;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 70
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v4}, Lcom/cisco/anyconnect/ui/Launcher;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_33

    .line 75
    :cond_46
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0, v4}, Lcom/cisco/anyconnect/ui/Launcher;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_33
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/cisco/anyconnect/ui/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 20
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_6c

    .line 22
    const-string v8, "Launch"

    invoke-virtual {v1, v8, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 23
    .local v0, "Launch":Z
    if-eqz v0, :cond_2f

    .line 24
    invoke-direct {p0}, Lcom/cisco/anyconnect/ui/Launcher;->reqPers()V

    .line 25
    const-string v8, "UserPreferences"

    invoke-virtual {p0, v8, v10}, Lcom/cisco/anyconnect/ui/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "eula"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    new-instance v2, Landroid/content/Intent;

    const-class v8, Lcom/cisco/anyconnect/ui/PrimaryActivity;

    invoke-direct {v2, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/cisco/anyconnect/ui/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 31
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2f
    const-string v8, "isClean"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 32
    .local v5, "isClean":Z
    if-eqz v5, :cond_48

    .line 33
    const-string v8, "Credentials"

    invoke-virtual {p0, v8, v10}, Lcom/cisco/anyconnect/ui/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    :cond_48
    const-string v8, "isStart"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 37
    .local v6, "isStart":Z
    const-string v8, "isActionSwitch"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 38
    .local v3, "isActionSwitch":Z
    const-string v8, "isChangeServer"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 41
    .local v4, "isChangeServer":Z
    const-string v8, "pairList"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 44
    .local v7, "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "String.valueOf(isStart)"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 54
    .end local v0    # "Launch":Z
    .end local v3    # "isActionSwitch":Z
    .end local v4    # "isChangeServer":Z
    .end local v5    # "isClean":Z
    .end local v6    # "isStart":Z
    .end local v7    # "pairList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_6b
    return-void

    .line 51
    :cond_6c
    const-string v8, "Hi ??"

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_6b
.end method
