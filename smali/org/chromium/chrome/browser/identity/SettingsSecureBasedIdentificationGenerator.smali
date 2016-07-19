.class public Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;
.super Ljava/lang/Object;
.source "SettingsSecureBasedIdentificationGenerator.java"

# interfaces
.implements Lorg/chromium/chrome/browser/identity/UniqueIdentificationGenerator;


# static fields
.field public static final GENERATOR_ID:Ljava/lang/String; = "SETTINGS_SECURE_ANDROID_ID"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method getAndroidId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/identity/SettingsSecureBasedIdentificationGenerator;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    const-string/jumbo v0, ""

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/util/HashUtil$Params;

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/util/HashUtil$Params;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lorg/chromium/chrome/browser/util/HashUtil$Params;->withSalt(Ljava/lang/String;)Lorg/chromium/chrome/browser/util/HashUtil$Params;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/util/HashUtil;->getMd5Hash(Lorg/chromium/chrome/browser/util/HashUtil$Params;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    goto :goto_0
.end method
