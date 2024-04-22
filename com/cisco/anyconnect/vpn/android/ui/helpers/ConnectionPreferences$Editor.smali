.class public Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;
.super Ljava/lang/Object;
.source "ConnectionPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;


# direct methods
.method public constructor <init>(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 243
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ConnectionPreferences"

    const-string v2, "attempt to clear ConnectionPreferences occured.  Ignored."

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public commit()Z
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$mupdateConnectionFields(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    const-string v1, "ConnectionPreferences"

    const-string/jumbo v2, "updateConnectionFields failed during,commit()"

    invoke-static {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v1}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetlisteners(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 260
    iget-object v3, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putBytes(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences$Editor;->this$0:Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;

    invoke-static {v0}, Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;->-$$Nest$fgetmValues(Lcom/cisco/anyconnect/vpn/android/ui/helpers/ConnectionPreferences;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 311
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;->DBG_ERROR:Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attempt to remove key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " occurred.  Ignored."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ConnectionPreferences"

    invoke-static {v0, v1, p1}, Lcom/cisco/anyconnect/vpn/android/util/AppLog;->logDebugMessage(Lcom/cisco/anyconnect/vpn/android/util/AppLog$Severity;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
