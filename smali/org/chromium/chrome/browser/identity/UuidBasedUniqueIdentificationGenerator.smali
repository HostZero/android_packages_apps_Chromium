.class public Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;
.super Ljava/lang/Object;
.source "UuidBasedUniqueIdentificationGenerator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;


# static fields
.field public static final GENERATOR_ID:Ljava/lang/String; = "UUID"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;->mPreferenceKey:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    iget-object v0, p0, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;->mPreferenceKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lorg/chromium/chrome/browser/identity/UuidBasedUniqueIdentificationGenerator;->mPreferenceKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
