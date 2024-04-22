.class public Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectNchsCheckboxPreference;
.super Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;
.source "AnyConnectNchsCheckboxPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectCheckboxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getPersistenceType()Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;
    .locals 1

    .line 32
    sget-object v0, Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;->NCHS:Lcom/cisco/anyconnect/vpn/android/ui/preferences/AnyConnectPreferenceManager$PersistenceType;

    return-object v0
.end method
