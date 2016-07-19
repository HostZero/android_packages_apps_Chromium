.class public Lorg/chromium/chrome/browser/gsa/GSAState;
.super Ljava/lang/Object;
.source "GSAState.java"


# static fields
.field static final SEARCH_INTENT_ACTION:Ljava/lang/String; = "com.google.android.googlequicksearchbox.TEXT_ASSIST"

.field static final SEARCH_INTENT_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static sGSAState:Lorg/chromium/chrome/browser/gsa/GSAState;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGsaAccount:Ljava/lang/String;

.field private mGsaAvailable:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/gsa/GSAState;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/chromium/chrome/browser/gsa/GSAState;->sGSAState:Lorg/chromium/chrome/browser/gsa/GSAState;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/chromium/chrome/browser/gsa/GSAState;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/gsa/GSAState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/gsa/GSAState;->sGSAState:Lorg/chromium/chrome/browser/gsa/GSAState;

    .line 62
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/gsa/GSAState;->sGSAState:Lorg/chromium/chrome/browser/gsa/GSAState;

    return-object v0
.end method

.method private isPackageAboveVersion(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isGsaAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 101
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    .line 103
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.googlequicksearchbox.TEXT_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    .line 115
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    const-string/jumbo v0, "com.google.android.googlequicksearchbox"

    const v1, 0x11e7c17d

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/gsa/GSAState;->isPackageAboveVersion(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.google.android.gms"

    const v1, 0x645b72

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/gsa/GSAState;->isPackageAboveVersion(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    goto :goto_1

    .line 113
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAvailable:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public setGsaAccount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/GSAState;->mGsaAccount:Ljava/lang/String;

    .line 76
    return-void
.end method
