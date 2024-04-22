.class public Lcom/cisco/anyconnect/vpn/jni/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public children:[Lcom/cisco/anyconnect/vpn/jni/Preference;

.field public id:Lcom/cisco/anyconnect/vpn/jni/Preference$PreferenceId;

.field public promptEntry:Lcom/cisco/anyconnect/vpn/jni/PromptEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
